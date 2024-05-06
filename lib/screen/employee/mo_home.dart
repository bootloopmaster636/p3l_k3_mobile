import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:p3l_k3_mobile/router.dart';
import 'package:p3l_k3_mobile/screen/employee/mo/absence_list.dart';

@RoutePage()
class MoScreen extends StatelessWidget {
  const MoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome, Operational Manager!'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.push(const AbsenceListRoute());
          },
          child: Text('Absence Management'),
        ),
      ),
    );
  }
}
