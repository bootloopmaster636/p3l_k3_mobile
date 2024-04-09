import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit your profile'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Save changes'),
          ),
          const Gap(8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone number',
                  ),
                ),
              ]
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: e,
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
