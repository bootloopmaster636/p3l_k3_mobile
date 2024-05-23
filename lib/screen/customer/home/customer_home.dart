import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/constants.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';
import 'package:p3l_k3_mobile/data/model/product_model.dart';
import 'package:p3l_k3_mobile/general_components.dart';
import 'package:p3l_k3_mobile/logic/customer_logic.dart';
import 'package:p3l_k3_mobile/logic/product_logic.dart';
import 'package:p3l_k3_mobile/router.dart';
import 'package:p3l_k3_mobile/screen/customer/home/settings_dialog.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tinycolor2/tinycolor2.dart';

@RoutePage()
class CustomerHomeScreen extends HookConsumerWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollCtl = useScrollController();
    final AsyncValue<List<Product>> products = ref.watch(productLogicProvider);

    return Scaffold(
      floatingActionButton: ScrollToTopButton(scrollCtl: scrollCtl),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(productLogicProvider.notifier).refresh();
        },
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        edgeOffset: 440,
        child: CustomScrollView(
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
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hampers',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Give something special for your special someone :)',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Our Products',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          'Craving something sweet? We got you covered!',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.7,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ProductCard(
                      product: products.value?[index] ?? getNullProduct(),
                    );
                  },
                  childCount: products.value?.length ?? 0,
                ),
              ),
            ),
            const SliverGap(32),
          ],
        ),
      ),
    );
  }
}

class ScrollToTopButton extends StatelessWidget {
  const ScrollToTopButton({
    super.key,
    required this.scrollCtl,
  });

  final ScrollController scrollCtl;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
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
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOutQuint,
          );
        },
        child: const Icon(Icons.keyboard_arrow_up_outlined),
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

class ProductCard extends HookWidget {
  const ProductCard({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final isTapped = useState(false);
    return GestureDetector(
      onTap: () {
        context.router.push(ProductDetailRoute(productID: product.id));
      },
      onTapDown: (TapDownDetails tap) {
        isTapped.value = true;
      },
      onTapUp: (TapUpDetails tap) {
        isTapped.value = false;
      },
      onTapCancel: () {
        isTapped.value = false;
      },
      child: Container(
        decoration: BoxDecoration(
          color: TinyColor.fromColor(Colors.orange).desaturate(40).lighten(46).toColor(),
          border: Border.all(color: Colors.black12, width: 1, strokeAlign: BorderSide.strokeAlignCenter),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const <BoxShadow>[
            BoxShadow(blurRadius: 4, spreadRadius: 1, color: Colors.black12, offset: Offset(0, 2)),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12).copyWith(bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(blurRadius: 2, color: Colors.black38),
                  ],
                ),
                height: 150,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                child: CachedNetworkImage(
                  imageUrl: '$storageUrl/product/${product.picture}',
                  progressIndicatorBuilder: (BuildContext context, String url, DownloadProgress downloadProgress) =>
                      Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                  fit: BoxFit.cover,
                  memCacheHeight: 300,
                  memCacheWidth: 300,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
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
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          product.description,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                    const Gap(8),
                    SizedBox(
                      height: 32,
                      child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.add,
                                size: 16,
                              ),
                              Text(
                                'Add to cart',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ).animate(target: isTapped.value ? 1 : 0).scale(
            begin: const Offset(1, 1),
            end: const Offset(0.95, 0.95),
            duration: 200.ms,
            curve: Curves.easeInOutCubic,
          ),
    );
  }
}

class Header extends ConsumerWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Customer> user = ref.watch(customerLogicProvider);

    return Skeletonizer(
      enabled: user.isLoading,
      ignoreContainers: true,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'assets/pictures/cakes-light.png',
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
                    InkWell(
                      onTap: () {
                        showDialog<Widget>(
                          context: context,
                          barrierColor: Colors.black26,
                          builder: (BuildContext context) {
                            return const SettingsDialog();
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                        foregroundImage: NetworkImage(
                            'https://api.dicebear.com/8.x/adventurer/png?seed=${user.value?.user.fullName}'),
                        radius: 22,
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                Text(
                  'Greetings, ${user.value?.user.fullName}!',
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
      ),
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
