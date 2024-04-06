import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:p3l_k3_mobile/data/test_product_model.dart';
import 'package:p3l_k3_mobile/data/test_user_model.dart';
import 'package:p3l_k3_mobile/general_components.dart';
import 'package:p3l_k3_mobile/router.dart';

@RoutePage()
class CustomerHomeScreen extends HookWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollCtl = useScrollController();
    final List<TestProduct> products = exampleProduct;

    return Scaffold(
      floatingActionButton: ListenableBuilder(
        // for back to top button
        listenable: scrollCtl,
        builder: (BuildContext context, Widget? widget) => Visibility(
          visible: scrollCtl.offset > 100,
          child: widget ?? const SizedBox(),
        ),
        child: FloatingActionButton.small(
          onPressed: () {
            scrollCtl.animateTo(
              scrollCtl.position.minScrollExtent,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOutQuint,
            );
          },
          child: const Icon(Icons.keyboard_arrow_up_outlined),
        ),
      ),
      body: CustomScrollView(
        controller: scrollCtl,
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 380,
            flexibleSpace: FlexibleSpaceBar(
              background: Header(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 6),
              child: Row(
                children: <Widget>[
                  Text(
                    'Our Products',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Spacer(),
                  const FilterButton(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8).copyWith(top: 0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ProductCard(
                    product: products[index],
                  )
                      .animate(
                        adapter: ScrollAdapter(
                          scrollCtl,
                          begin: 360,
                          end: 0,
                        ),
                      )
                      .scale(begin: const Offset(0.95, 0.95));
                },
                childCount: products.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 0.8,
              ),
            ),
          ),
          const SliverGap(32),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        showModalBottomSheet<Widget>(
          context: context,
          showDragHandle: true,
          builder: (BuildContext context) {
            return const SizedBox.expand(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text('NOT YET IMPLEMENTED :D')],
              ),
            );
          },
        );
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.filter_list,
            size: 16,
          ),
          const Gap(4),
          Text(
            'Filter',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({required this.product, super.key});

  final TestProduct product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          context.router.push(ProductDetailRoute(productID: product.id));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              height: 150,
              width: double.infinity,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rp. ${product.price}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Gap(4),
                  Text(
                    product.description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends ConsumerWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const TestUser user = exampleUser;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          Theme.of(context).brightness == Brightness.light
              ? 'assets/pictures/cakes-light.png'
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
          padding: const EdgeInsets.all(20).copyWith(top: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const LogoAtmaKitchen(
                    height: 48,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.shopping_bag_outlined),
                    onPressed: () {},
                  ),
                  const Gap(4),
                  InkWell(
                    onTap: () {
                      context.router.push(const SettingsRoute());
                    },
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                      foregroundImage: NetworkImage(user.profilePictURL),
                    ),
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
              const Expanded(
                child: Announcements(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Announcements extends StatelessWidget {
  const Announcements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Swiper(
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
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
        child: Center(child: Text(index.toString())),
      ),
    );
  }
}
