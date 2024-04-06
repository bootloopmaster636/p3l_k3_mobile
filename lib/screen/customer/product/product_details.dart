import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:p3l_k3_mobile/data/test_product_model.dart';
import 'package:card_swiper/card_swiper.dart';

@RoutePage()
class ProductDetailScreen extends HookWidget {
  const ProductDetailScreen({
    required this.productID,
  });
  final int productID;

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollCtl = useScrollController();
    final TestProduct product = exampleProduct[productID];

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Swiper(
                  itemCount: 3,
                  pagination: const SwiperPagination(),
                  itemBuilder: (context, index) {
                    return Image.network(
                      product.imageUrl,
                      fit: BoxFit.cover,
                    )
                        .animate()
                        .scale(
                          delay: 400.ms,
                          duration: 600.ms,
                          begin: const Offset(0.8, 0.8),
                          end: const Offset(1, 1),
                          curve: Curves.easeOutExpo,
                        )
                        .fade(duration: 500.ms);
                  }),
            ),
          ),
          const SliverGap(24),
          ProductInfo(product: product),
        ],
      ),
      bottomSheet:
          const AddToCartButton().animate().fadeIn(delay: 1000.ms).slideY(
                begin: 2,
                duration: 500.ms,
                curve: Curves.easeOutExpo,
              ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.product,
  });

  final TestProduct product;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Text(
            product.name,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ).animate().fadeIn(delay: 400.ms, duration: 300.ms).slideY(
                begin: 2,
                duration: 600.ms,
                curve: Curves.easeOutExpo,
              ),
          Text(
            'Rp. ${product.price.toInt()}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ).animate().fadeIn(delay: 500.ms, duration: 300.ms).slideY(
                begin: 2,
                duration: 600.ms,
                curve: Curves.easeOutExpo,
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  product.description,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ).animate().fadeIn(delay: 800.ms),
          ),
        ],
      ),
    );
  }
}

class ProductAdditionalInfo extends StatelessWidget {
  const ProductAdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                Column(
                  children: [],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: FilledButton(
          onPressed: () {},
          child: Text('Add to cart'),
        ),
      ),
    );
  }
}
