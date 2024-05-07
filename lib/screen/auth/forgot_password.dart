import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/forgotPasswordApi.dart';
import 'package:p3l_k3_mobile/router.dart';
import 'package:toastification/toastification.dart';

@RoutePage()
class ForgotPasswordScreen extends HookWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailCtl = useTextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Forgot Password'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Please enter your email address'),
                const Text(
                    'The OTP code will be sent to your email if its correct'),
                TextField(
                  controller: emailCtl,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    VerifyEmail(emailCtl.text);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) => EnterOTPScreen()),
                    );
                  },
                  child: const Text('Send e-mail'),
                ),
              ],
            ),
          ),
        ));
  }
}

class EnterOTPScreen extends HookWidget {
  const EnterOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController otpCtl = useTextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the OTP code that has been send to your email',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Gap(8),
            TextField(
              controller: otpCtl,
              decoration: const InputDecoration(
                hintText: 'OTP code',
              ),
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const Gap(16),
            FilledButton(
              onPressed: () async {
                await VerifyOTP(otpCtl.text).then((value) {
                  Logger().i(value);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => EnterNewPasswordScreen(
                        token: value,
                      ),
                    ),
                  );
                });
              },
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}

class EnterNewPasswordScreen extends HookWidget {
  const EnterNewPasswordScreen({required this.token, super.key});
  final String token;

  @override
  Widget build(BuildContext context) {
    final TextEditingController newPasswordCtl = useTextEditingController();
    final TextEditingController newPasswordConfirmCtl =
        useTextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the OTP code that has been send to your email',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            TextField(
              controller: newPasswordCtl,
              decoration: const InputDecoration(
                hintText: 'New password',
              ),
            ),
            TextField(
              controller: newPasswordConfirmCtl,
              decoration: const InputDecoration(
                hintText: 'Confirm new password',
              ),
            ),
            const Gap(16),
            FilledButton(
              onPressed: () async {
                if (newPasswordCtl.text != newPasswordConfirmCtl.text) {
                  Logger().d('Passwd not match');
                  toastification.show(
                    context: context,
                    type: ToastificationType.error,
                    style: ToastificationStyle.flat,
                    title: const Text('Password does not match'),
                    description: const Text(
                      'Please confirm that you enter the same password in each field.',
                    ),
                    alignment: Alignment.bottomCenter,
                    autoCloseDuration: const Duration(seconds: 5),
                    icon: const Icon(Icons.info_outline),
                    boxShadow: lowModeShadow,
                    dragToClose: true,
                  );
                  return;
                }
                if (newPasswordCtl.text.length < 8) {
                  toastification.show(
                    context: context,
                    type: ToastificationType.error,
                    style: ToastificationStyle.flat,
                    title: const Text('Insecure password'),
                    description: const Text(
                      'Password must contain at least 8 characters.',
                    ),
                    alignment: Alignment.bottomCenter,
                    autoCloseDuration: const Duration(seconds: 5),
                    icon: const Icon(Icons.info_outline),
                    boxShadow: lowModeShadow,
                    dragToClose: true,
                  );
                }
                await EnterNewPassword(newPasswordCtl.text, token)
                    .then((value) {
                  toastification.show(
                    context: context,
                    type: ToastificationType.success,
                    style: ToastificationStyle.flat,
                    title: const Text('Change password success'),
                    description: const Text(
                      'Dont forget to remember your new password :)',
                    ),
                    alignment: Alignment.bottomCenter,
                    autoCloseDuration: const Duration(seconds: 5),
                    icon: const Icon(Icons.check_circle_outline),
                    boxShadow: lowModeShadow,
                    dragToClose: true,
                  );
                  context.router.push(const LoginRoute());
                });
              },
              child: const Text('Change password'),
            ),
          ],
        ),
      ),
    );
  }
}
