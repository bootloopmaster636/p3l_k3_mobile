import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/constants.dart';
import 'package:p3l_k3_mobile/data/model/product_model.dart';
import 'package:p3l_k3_mobile/logic/product_logic.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

@RoutePage()
class ProductDetailScreen extends HookConsumerWidget {
  const ProductDetailScreen({
    required this.productID,
    super.key,
  });
  final int productID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollCtl = useScrollController();
    final AsyncValue<List<Product>> productList = ref.watch(productLogicProvider);
    final Product product = productList.maybeWhen(
      data: (List<Product> data) => getProductById(productID, data),
      orElse: getNullProduct,
    );

    return Scaffold(
      body: CustomScrollView(
        controller: scrollCtl,
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 400,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: ZoomOverlay(
                child: CachedNetworkImage(
                  imageUrl: '$storageUrl/product/${product.picture}',
                  progressIndicatorBuilder: (BuildContext context, String url, DownloadProgress downloadProgress) =>
                      Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                  fit: BoxFit.cover,
                )
                    .animate()
                    .slideY(
                      duration: 600.ms,
                      delay: 400.ms,
                      begin: 0.4,
                      end: 0,
                      curve: Curves.easeOutExpo,
                    )
                    .scale(
                      delay: 400.ms,
                      duration: 600.ms,
                      begin: const Offset(0.6, 0.6),
                      end: const Offset(1, 1),
                      curve: Curves.easeOutExpo,
                    )
                    .fade(duration: 500.ms),
              ),
            ),
          ),
          const SliverGap(24),
          ProductInfo(product: product),
        ],
      ),
      bottomSheet: AddToCartButton(
        product: product,
      ).animate().fadeIn(delay: 1000.ms).slideY(
            begin: 2,
            duration: 500.ms,
            curve: Curves.easeOutExpo,
          ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverList(
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
              'Rp. ${product.price}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ).animate().fadeIn(delay: 500.ms, duration: 300.ms).slideY(
                  begin: 2,
                  duration: 600.ms,
                  curve: Curves.easeOutExpo,
                ),
            const Gap(8),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  product.description,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ).animate().fadeIn(delay: 800.ms),
            const Gap(4),
            ProductAdditionalInfo(product: product)
                .animate()
                .fadeIn(delay: 1000.ms),
            const Gap(8),
            const SizedBox(height: 128),
          ],
        ),
      ),
    );
  }
}

class ProductAdditionalInfo extends StatelessWidget {
  const ProductAdditionalInfo({required this.product, super.key});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Additional info',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.start,
            ),
            const Gap(4),
            Table(
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Stock',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${product.readyStock} available',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Product category',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'soon(tm)',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Availability',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            product.status == ProductStockType.onDemand
                                ? 'Ready in store'
                                : 'Should pre-order',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(),
                  ],
                ),
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
    required this.product,
    super.key,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: FilledButton(
          onPressed: () {},
          child: const Text('Add to cart'),
        ),
      ),
    );
  }
}
