import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EditPasswordScreen extends StatelessWidget {
  const EditPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change your password'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Current password',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'New password',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Repeat new password',
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Change Password'),
                ),
              ]
                  .map(
                    (Widget e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: e,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
