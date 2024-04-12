import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:p3l_k3_mobile/data/test_user_model.dart';

@RoutePage()
class EditAddressScreen extends StatelessWidget {
  const EditAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = exampleUser;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your addresses'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isDismissible: false,
              isScrollControlled: true,
              useSafeArea: true,
              builder: (BuildContext context) {
                return const AddAdressForm();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: user.alamat.map((e) {
              return Card(
                  child: ListTile(
                title: Text(e),
              ));
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class AddAdressForm extends ConsumerWidget {
  const AddAdressForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height * .75),
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  Text(
                    'Add Adress',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Gap(16),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Name'),
                      hintText: 'Add a name to this address name (ex.: Home)',
                    ),
                  ),
                  const Gap(8),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Full address'),
                    ),
                  ),
                  const Gap(8),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('City'),
                    ),
                  ),
                  const Gap(16),
                  FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Save new address'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
