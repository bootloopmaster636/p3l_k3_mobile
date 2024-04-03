import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:p3l_k3_mobile/constants.dart';
import 'package:p3l_k3_mobile/general_components.dart';

@RoutePage()
class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 420,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Header(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return ListTile(
                  title: Text('$index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class Header extends ConsumerWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          Theme.of(context).brightness == Brightness.light
              ? 'assets/pictures/cakes.png'
              : 'assets/pictures/cakes-dark.png',
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.yellow.withOpacity(0.2),
                Colors.orange.withOpacity(0.2),
                Colors.deepOrange.withOpacity(0.2),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 48, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: [
                  LogoAtmaKitchen(
                    height: 48,
                    type: Theme.of(context).brightness == Brightness.light ? LogoType.black : LogoType.white,
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              const Gap(16),
              Text(
                'Greetings, user!',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'What sweet thing did you want to eat today?',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Gap(16),
              Expanded(
                child: Swiper(
                  itemCount: 4,
                  viewportFraction: 0.8,
                  scale: 0.9,
                  fade: 0.6,
                  autoplay: true,
                  autoplayDelay: 6000,
                  duration: 800,
                  pagination: const SwiperPagination(),
                  outer: true,
                  itemBuilder: (BuildContext context, int index) => Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
                    ),
                    child: Center(child: Text(index.toString())),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
