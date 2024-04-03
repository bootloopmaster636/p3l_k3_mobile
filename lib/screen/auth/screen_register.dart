import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REGISTER'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Intro(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: RegisterForm(),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterForm extends HookConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<bool> isPasswordHidden = useState(true);
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'E-mail address',
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: 'Username',
            ),
          ),
          TextFormField(
            obscureText: isPasswordHidden.value,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: '8 characters minimum, make it secure!',
              suffixIcon: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  isPasswordHidden.value ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                ),
                onPressed: () => isPasswordHidden.value = !isPasswordHidden.value,
              ),
            ),
          ),
          TextFormField(
            obscureText: isPasswordHidden.value,
            decoration: const InputDecoration(
              labelText: 'Confirm Password',
            ),
          ),
          Gap(16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: FilledButton(
              onPressed: () {},
              child: const Text('Register'),
            ),
          ),
        ],
      ),
    );
  }
}

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).colorScheme.primaryContainer,
            Theme.of(context).colorScheme.tertiaryContainer,
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          const Gap(16),
          Text(
            'What benefit did you get?',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Gap(24),
          Expanded(
            child: Swiper(
              autoplay: true,
              autoplayDelay: 5000,
              duration: 600,
              pagination: const SwiperPagination(),
              itemBuilder: (BuildContext context, int index) {
                return benefits[index];
              },
              itemCount: benefits.length,
            ),
          ),
          const Gap(4),
          const Text('(and the registration is free!)'),
          const Gap(24),
        ],
      ),
    );
  }
}

final List<BenefitComponentBuilder> benefits = [
  const BenefitComponentBuilder(
    lottiePath: 'assets/anim/shop_mobile.json',
    message: 'Order whenever you want, wherever you want.',
  ),
  const BenefitComponentBuilder(
    lottiePath: 'assets/anim/coins.json',
    message: 'Get special discounts and promotion.',
  ),
  const BenefitComponentBuilder(
    lottiePath: 'assets/anim/delivery.json',
    message: 'Conveniently deliver to your selected location.',
  ),
];

class BenefitComponentBuilder extends StatelessWidget {
  const BenefitComponentBuilder({required this.lottiePath, required this.message, super.key});
  final String lottiePath;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Lottie.asset(
          lottiePath,
          height: 160,
          width: 160,
          fit: BoxFit.fill,
        ),
        const Gap(8),
        Text(
          message,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
