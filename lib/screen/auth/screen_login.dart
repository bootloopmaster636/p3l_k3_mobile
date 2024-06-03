import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:p3l_k3_mobile/data/model/auth_model.dart';
import 'package:p3l_k3_mobile/general_components.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:p3l_k3_mobile/router.dart';

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
                    Colors.cyan.withOpacity(0.3),
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
                  ],
                ),
              ),
            ),
          )
              .animate(
                autoPlay: true,
                onPlay: (AnimationController controller) => controller.repeat(),
              )
              .shake(
                offset: const Offset(20, 10),
                hz: 0.2,
                duration: 8.seconds,
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
                    Colors.pink.withOpacity(0.3),
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
                  ],
                ),
              ),
            ),
          )
              .animate(
                autoPlay: true,
                onPlay: (AnimationController controller) => controller.repeat(),
              )
              .shake(
                offset: const Offset(-20, -10),
                hz: 0.2,
                duration: 8.seconds,
              ),
          const Padding(
            padding: EdgeInsets.all(8),
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
            const LogoAtmaKitchen(),
            const Gap(16),
            Lottie.asset(
              'assets/anim/mascot_login.json',
              height: 350,
            ),
            const Gap(16),
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
    final TextEditingController emailCtl = useTextEditingController();
    final TextEditingController passwordCtl = useTextEditingController();
    final ValueNotifier<bool> isPasswordVisible = useState(false);
    final AsyncValue<Auth> authData = ref.watch(authLogicProvider);

    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'E-mail',
            ),
            keyboardType: TextInputType.emailAddress,
            controller: emailCtl,
          ),
          const Gap(8),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordVisible.value == true ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                ),
                onPressed: () {
                  isPasswordVisible.value = !isPasswordVisible.value;
                },
              ),
            ),
            obscureText: !isPasswordVisible.value,
            keyboardType: TextInputType.visiblePassword,
            controller: passwordCtl,
          ),
          const Gap(16),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: authData.isLoading == false
                  ? () async {
                      try {
                        await ref.read(authLogicProvider.notifier).login(emailCtl.text, passwordCtl.text);
                      } on DioException catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                e.response?.data['message'].toString() ?? 'Unknown error occured',
                              ),
                            ),
                          );
                        }
                      }
                    }
                  : null,
              child: Text(authData.isLoading == true ? 'Loading...' : 'Login'),
            ),
          ),
          TextButton(
            onPressed: () {
              context.router.push(const ForgotPasswordRoute());
            },
            child: const Text('Forgot password?'),
          ),
          const Divider(
            thickness: 2,
            height: 36,
          ),
          Text(
            "Don't have an account? You can either",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Gap(4),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {
                    context.router.pushNamed('/register');
                  },
                  child: const Text('Register'),
                ),
                const Gap(8),
                const Text('or'),
                const Gap(8),
                OutlinedButton(
                  onPressed: () {
                    ref.read(authLogicProvider.notifier).loginAsGuest();
                  },
                  child: const Text('Continue as guest'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
