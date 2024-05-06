import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/model/absence_model.dart';
import 'package:p3l_k3_mobile/data/model/employee_model.dart';
import 'package:p3l_k3_mobile/data/model/user_model.dart';
import 'package:p3l_k3_mobile/logic/absence_logic.dart';
import 'package:p3l_k3_mobile/logic/employee_logic.dart';
import 'package:p3l_k3_mobile/utility.dart';
import 'package:toastification/toastification.dart';

@RoutePage()
class AbsenceListScreen extends ConsumerWidget {
  const AbsenceListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Absence>> absenceList =
        ref.watch(absenceLogicProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Absence List'),
      ),
      body: absenceList.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(16),
              child: RefreshIndicator(
                onRefresh: () {
                  return ref.read(absenceLogicProvider.notifier).fetchAll();
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: absenceList.value?.map((Absence element) {
                          return AbsenceTile(absence: element);
                        }).toList() ??
                        <Widget>[],
                  ),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Add Absence'),
        icon: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet<Widget>(
            context: context,
            builder: (BuildContext context) {
              return const AddAbsence();
            },
          );
        },
      ),
    );
  }
}

class AbsenceTile extends ConsumerWidget {
  const AbsenceTile({required this.absence, super.key});
  final Absence absence;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        title: Text(absence.employees.user.fullName),
        subtitle: Text(convertDateTimeToDMY(absence.absenceDate)),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline),
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Delete Absence'),
                  content: const Text(
                      'Are you sure you want to delete this absence?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        deleteAbsence(absence, context, ref);
                        Navigator.of(context).pop();
                      },
                      child: const Text('Delete'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class AddAbsence extends HookConsumerWidget {
  const AddAbsence({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Employee>> employeeList =
        ref.watch(employeeLogicProvider);

    final ValueNotifier<int> selectedEmployee = useState(1);
    final ValueNotifier<DateTime> selectedDate = useState(DateTime.now());

    return employeeList.isLoading
        ? const LinearProgressIndicator()
        : Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    'Add Absence',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Gap(16),
                  Text('Select employee:',
                      style: Theme.of(context).textTheme.titleMedium),
                  const Gap(8),
                  DropdownMenu<int>(
                    initialSelection: employeeList.value?.first.id ?? 1,
                    dropdownMenuEntries: employeeList.value
                            ?.map<DropdownMenuEntry<int>>(
                              (e) => DropdownMenuEntry<int>(
                                value: e.id,
                                label: e.user.fullName,
                              ),
                            )
                            .toList() ??
                        [],
                    onSelected: (int? value) {
                      selectedEmployee.value = value ?? 1;
                    },
                  ),
                  const Gap(24),
                  Text(
                    'Select the date where they absent',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'Currently selected: ${convertDateTimeToDMY(selectedDate.value)}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(8),
                  OutlinedButton(
                    onPressed: () async {
                      selectedDate.value = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(), //get today's date
                            firstDate: DateTime(2000),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)),
                          ) ??
                          DateTime.now();
                    },
                    child: const Text('Select a date'),
                  ),
                  const Gap(24),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: FilledButton(
                      onPressed: () async {
                        await ref
                            .read(absenceLogicProvider.notifier)
                            .create(selectedEmployee.value, selectedDate.value)
                            .then((void value) {
                          toastification.show(
                            context: context,
                            type: ToastificationType.success,
                            style: ToastificationStyle.flat,
                            title: const Text('Success'),
                            description: const Text(
                              'This person is added to absence list',
                            ),
                            alignment: Alignment.bottomCenter,
                            autoCloseDuration: const Duration(seconds: 5),
                            icon: const Icon(Icons.add_outlined),
                            boxShadow: lowModeShadow,
                            dragToClose: true,
                          );
                          Navigator.of(context).pop();
                        });
                      },
                      child: const Text('Save'),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}

void deleteAbsence(Absence absence, BuildContext context, WidgetRef ref) async {
  try {
    await ref.read(absenceLogicProvider.notifier).delete(absence.id).then(
      (void value) {
        toastification.show(
          context: context,
          type: ToastificationType.success,
          style: ToastificationStyle.flat,
          title: const Text('Success'),
          description: const Text('This person is removed from absence list'),
          alignment: Alignment.bottomCenter,
          autoCloseDuration: const Duration(seconds: 5),
          icon: const Icon(Icons.delete_outline),
          boxShadow: lowModeShadow,
          dragToClose: true,
        );
      },
    );
  } catch (e) {
    Logger().e(e);
  }
}
