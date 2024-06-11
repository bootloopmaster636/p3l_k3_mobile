import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:p3l_k3_mobile/data/model/ingredient_model.dart';
import 'package:p3l_k3_mobile/logic/ingredient_logic.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

@RoutePage()
class IngredientStockReportScreen extends ConsumerWidget {
  const IngredientStockReportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Ingredient>> ingredientList = ref.watch(ingredientLogicProvider);
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('MMMM');
    final String month = formatter.format(now);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingredient Stock Report'),
      ),
      body: ingredientList.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (Object err, StackTrace stack) => Center(
          child: Text('Error: $err'),
        ),
        data: (List<Ingredient> ingredients) => Padding(
          padding: const EdgeInsets.all(16),
          child: RefreshIndicator(
            onRefresh: () {
              return ref.read(ingredientLogicProvider.notifier).refresh();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                const Text(
                  'ATMA KITCHEN',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
                const Text('Jl. Centralpark No. 10 Yogyakarta'),
                const SizedBox(height: 15),
                const Text(
                  'Ingredient Stock Report',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text('Print Date : 2 $month 2024'),
                const SizedBox(height: 30),
                Expanded(
                  child: DataTable2(
                    columnSpacing: 12,
                    horizontalMargin: 12,
                    minWidth: 600,
                    columns: const <DataColumn>[
                      DataColumn2(
                        label: Text(
                          'No',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        size: ColumnSize.S,
                      ),
                      DataColumn(
                        label: Text(
                          'Ingredient Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn2(
                        label: Text(
                          'Unit',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        size: ColumnSize.S,
                      ),
                      DataColumn2(
                        label: Text(
                          'Stock',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        size: ColumnSize.S,
                      ),
                    ],
                    rows: List<DataRow>.generate(
                      ingredients.length,
                      (int index) {
                        final Ingredient ingredient = ingredients[index];
                        return DataRow(
                          cells: <DataCell>[
                            DataCell(
                              Text(
                                (index + 1).toString(),
                              ),
                            ), // Serial number
                            DataCell(
                              Text(ingredient.name),
                            ), // Ingredient name
                            DataCell(Text(ingredient.unit)), // Unit
                            DataCell(
                              Text(
                                ingredient.quantity.toString(),
                              ),
                            ), // Stock
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Print'),
        icon: const Icon(Icons.print),
        onPressed: () {
          if (ingredientList.value != null) {
            generateAndPrintPdf(ingredientList.value!, month);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('No ingredients available to print')),
            );
          }
        },
      ),
    );
  }
}

Future<void> generateAndPrintPdf(
  List<Ingredient> ingredients,
  String month,
) async {
  final pw.Document doc = pw.Document();

  pw.Widget buildTable(List<Ingredient> ingredients) {
    return pw.Table(
      border: pw.TableBorder.all(),
      children: <pw.TableRow>[
        pw.TableRow(
          children: <pw.Widget>[
            pw.Padding(
              padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: pw.Text(
                'Ingredient Name',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: pw.Text(
                'Unit',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: pw.Text(
                'Quantity',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
            ),
          ],
        ),
        ...ingredients.map(
          (Ingredient ingredient) => pw.TableRow(
            children: <pw.Widget>[
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: pw.Text(ingredient.name, style: const pw.TextStyle()),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: pw.Text(ingredient.unit, style: const pw.TextStyle()),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: pw.Text(
                  ingredient.quantity.toString(),
                  style: const pw.TextStyle(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Split the ingredients list into chunks that fit on individual pages
  const int itemsPerPage = 20; // Adjust the number of items per page as needed
  for (int i = 0; i < ingredients.length; i += itemsPerPage) {
    final List<Ingredient> chunk = ingredients.sublist(
      i,
      i + itemsPerPage > ingredients.length ? ingredients.length : i + itemsPerPage,
    );
    doc.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Column(
          children: <pw.Widget>[
            pw.Text(
              'ATMA KITCHEN',
              style: pw.TextStyle(fontSize: 25, fontWeight: pw.FontWeight.bold),
            ),
            pw.Text('Jl. Centralpark No. 10 Yogyakarta', style: const pw.TextStyle()),
            pw.SizedBox(height: 20),
            pw.Text(
              'Ingredient Stock Report',
              style: pw.TextStyle(
                fontSize: 18,
                fontWeight: pw.FontWeight.bold,
                decoration: pw.TextDecoration.underline,
              ),
            ),
            pw.Text('Print Date: 2 $month 2024', style: const pw.TextStyle()),
            pw.SizedBox(height: 30),
            pw.Expanded(child: buildTable(chunk)),
          ],
        ),
      ),
    );
  }

  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => doc.save(),
  );
}
