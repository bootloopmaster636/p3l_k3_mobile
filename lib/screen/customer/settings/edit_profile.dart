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
        title: const Text('Edit your profile'),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text('Save changes'),
          ),
          const Gap(8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <TextFormField>[
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone number',
                  ),
                ),
              ]
                  .map((TextFormField e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: e,
                      ),)
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
