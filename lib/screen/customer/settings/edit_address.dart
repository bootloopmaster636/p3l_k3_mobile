import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EditAddressScreen extends StatelessWidget {
  const EditAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change your address'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Placeholder(),
            ]
                .map((e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: e,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
