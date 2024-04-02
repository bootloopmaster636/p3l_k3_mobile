import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:p3l_k3_mobile/constants.dart';
import 'package:p3l_k3_mobile/general_components.dart';
import 'package:tinycolor2/tinycolor2.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -250,
            left: -250,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: <Color>[
                    TinyColor.fromString('B1E1EE').toColor(),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: -250,
            bottom: -250,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: <Color>[
                    TinyColor.fromString('EECDD3').toColor(),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: LoginPageContent(),
          ),
        ],
      ),
    );
  }
}

class LoginPageContent extends StatelessWidget {
  const LoginPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const LogoAtmaKitchen(
              type: LogoType.black,
              showBrand: false,
              height: 64,
            ),
            const Gap(16),
            Text(
              'Welcome to Atma Kitchen!',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'where perfection meets the taste',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            Lottie.asset(
              'assets/anim/cake_login.json',
              repeat: false,
            ),
            const Gap(24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: LoginForm(),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends HookConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<bool> isPasswordVisible = useState(false);
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Username',
            ),
          ),
          const Gap(8),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
              suffix: IconButton(
                icon: Icon(isPasswordVisible.value == true ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                onPressed: () {
                  isPasswordVisible.value = !isPasswordVisible.value;
                },
              ),
            ),
            obscureText: !isPasswordVisible.value,
          ),
          const Gap(16),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {},
              child: Text('Login'),
            ),
          ),
          Divider(
            thickness: 2,
            height: 64,
          ),
          Text(
            "Don't have an account? You can either",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text('Register'),
              ),
              const Gap(8),
              Text('or'),
              const Gap(8),
              OutlinedButton(
                onPressed: () {},
                child: Text('Continue as guest'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
