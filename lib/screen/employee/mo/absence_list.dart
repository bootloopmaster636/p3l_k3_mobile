import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/data/model/absence_model.dart';
import 'package:p3l_k3_mobile/data/model/employee_model.dart';
import 'package:p3l_k3_mobile/data/model/user_model.dart';
import 'package:p3l_k3_mobile/logic/absence_logic.dart';
import 'package:p3l_k3_mobile/logic/employee_logic.dart';

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
          : SingleChildScrollView(
              child: Column(
                children: absenceList.value?.map((Absence element) {
                      return AbsenceTile(absence: element);
                    }).toList() ??
                    <Widget>[],
              ),
            ),
    );
  }
}

class AbsenceTile extends ConsumerWidget {
  const AbsenceTile({required this.absence, super.key});
  final Absence absence;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Employee>> employeeList =
        ref.watch(employeeLogicProvider);
    final User? employeeTarget = employeeList.value
        ?.firstWhere((Employee element) => element.id == absence.employeeId)
        .user;
    return Card(
      child: ListTile(
        title: Text(employeeTarget?.fullName ?? 'Unknown'),
        subtitle: Text(absence.absenceDate.toString()),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline),
          onPressed: () {
            ref.read(absenceLogicProvider.notifier).delete(absence.id);
          },
        ),
      ),
    );
  }
}

// class AddAbsence extends ConsumerWidget {
//   const AddAbsence({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final AsyncValue<List<Employee>> employeeList =
//         ref.watch(employeeLogicProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Select Employee'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: employeeList.value?.map((Employee element) {
//                 return ListTile(
//                   title: Text(element.user.fullName),
//                   onTap: () {},
//                 );
//               }).toList() ??
//               <Widget>[],
//         ),
//       ),
//     );
//   }
// }
