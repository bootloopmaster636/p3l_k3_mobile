import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/forgotPasswordApi.dart';
import 'package:p3l_k3_mobile/router.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Enter the OTP code that has been send to your email'),
          TextField(
            controller: otpCtl,
            decoration: const InputDecoration(
              hintText: 'OTP code',
            ),
          ),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Enter the OTP code that has been send to your email'),
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
          FilledButton(
            onPressed: () async {
              await EnterNewPassword(newPasswordCtl.text, token).then((value) {
                context.router.push(const LoginRoute());
              });
            },
            child: const Text('Change password'),
          ),
        ],
      ),
    );
  }
}
