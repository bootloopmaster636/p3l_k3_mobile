import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/data/model/ingredient_use_history_model.dart';
import 'package:p3l_k3_mobile/logic/ingredient_usage_logic.dart';
import 'package:p3l_k3_mobile/utility.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

@RoutePage()
class IngredientUsageReportGenerateScreen extends HookConsumerWidget {
  const IngredientUsageReportGenerateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<DateTime> startingDate = useState(DateTime.now().subtract(Duration(days: 1)));
    final ValueNotifier<DateTime> endDate = useState(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingredient Usage Report'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select starting date'),
            Text(
              'Currently selected: ${convertDateTimeToDMY(startingDate.value)}',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Gap(8),
            OutlinedButton(
              onPressed: () async {
                startingDate.value = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(), //get today's date
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    ) ??
                    DateTime.now();
              },
              child: const Text('Select a date'),
            ),
            const Gap(16),
            const Text('Select end date'),
            Text(
              'Currently selected: ${convertDateTimeToDMY(endDate.value)}',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Gap(8),
            OutlinedButton(
              onPressed: () async {
                endDate.value = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(), //get today's date
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 365 * 2)),
                    ) ??
                    DateTime.now();
              },
              child: const Text('Select a date'),
            ),
            const Gap(16),
            FilledButton(
              onPressed: () {
                ref.read(ingredientUsageLogicProvider.notifier).generate(startingDate.value, endDate.value);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IngredientUsageReportShow(
                      from: startingDate.value,
                      to: endDate.value,
                    ),
                  ),
                );
              },
              child: const Text('Generate'),
            ),
          ],
        ),
      ),
    );
  }
}

class IngredientUsageReportShow extends ConsumerWidget {
  const IngredientUsageReportShow({required this.from, required this.to, super.key});

  final DateTime from;
  final DateTime to;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<IngredientUseHistory>> ingredientUsage = ref.watch(ingredientUsageLogicProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Ingredient Usage Report'),
        actions: [
          IconButton(
            onPressed: () {
              generatePdf(context, ingredientUsage.value ?? [], from, to);
            },
            icon: Icon(Icons.save_alt),
          ),
        ],
      ),
      body: IngredientUsageBody(
        ingredientUsage: ingredientUsage,
        from: from,
        to: to,
      ),
    );
  }
}

class IngredientUsageBody extends StatelessWidget {
  const IngredientUsageBody({required this.ingredientUsage, required this.from, required this.to, super.key});

  final AsyncValue<List<IngredientUseHistory>> ingredientUsage;
  final DateTime from;
  final DateTime to;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ingredientUsage.isLoading
          ? const CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Atma Kitchen',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    'Jl. Centralpark No.10 Yogyakarta',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const Gap(24),
                  Text(
                    'Ingredient Usage Report',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Date range: ${convertDateTimeToDMY(from)} - ${convertDateTimeToDMY(to)}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Gap(8),
                  Expanded(
                    child: IngredientUsageTable(
                      ingredientUsage: ingredientUsage,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class IngredientUsageTable extends StatelessWidget {
  const IngredientUsageTable({required this.ingredientUsage, super.key});

  final AsyncValue<List<IngredientUseHistory>> ingredientUsage;

  @override
  Widget build(BuildContext context) {
    return DataTable2(
      columns: const [
        DataColumn2(
          label: Text(
            'Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn2(
          label: Text(
            'Unit',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn2(
          label: Text(
            'Used amount',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
      rows: List<DataRow>.generate(ingredientUsage.value?.length ?? 0, (int index) {
        return DataRow(
          cells: [
            DataCell(
              Text(ingredientUsage.value?[index].ingredients.name ?? 'Unknown'),
            ),
            DataCell(
              Text(ingredientUsage.value?[index].ingredients.unit ?? 'Unknown'),
            ),
            DataCell(
              Text(ingredientUsage.value?[index].quantity.toString() ?? 'Unknown'),
            ),
          ],
        );
      }),
    );
  }
}

Future<void> generatePdf(
    BuildContext context, List<IngredientUseHistory> ingredientUsage, DateTime from, DateTime to) async {
  final pw.Document pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
              'Atma Kitchen',
              style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
            ),
            pw.Text(
              'Jl. Centralpark No.10 Yogyakarta',
              style: pw.TextStyle(fontSize: 16),
            ),
            pw.SizedBox(height: 24),
            pw.Text(
              'Ingredient Usage Report',
              style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
            ),
            pw.Text(
              'Date range: ${convertDateTimeToDMY(from)} - ${convertDateTimeToDMY(to)}',
              style: pw.TextStyle(fontSize: 16),
            ),
            pw.SizedBox(height: 8),
            pw.Expanded(
              child: pw.Table.fromTextArray(
                context: context,
                data: <List<String>>[
                  <String>['Name', 'Unit', 'Used amount'],
                  ...ingredientUsage.map((IngredientUseHistory ingredient) {
                    return <String>[
                      ingredient.ingredients.name,
                      ingredient.ingredients.unit,
                      ingredient.quantity.toString(),
                    ];
                  }),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );

  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
