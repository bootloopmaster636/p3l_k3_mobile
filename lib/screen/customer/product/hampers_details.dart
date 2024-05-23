import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:p3l_k3_mobile/constants.dart';
import 'package:p3l_k3_mobile/data/model/hampers_detail_model.dart';
import 'package:p3l_k3_mobile/data/model/hampers_model.dart';
import 'package:p3l_k3_mobile/logic/hampers_logic.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

@RoutePage()
class HampersDetailScreen extends ConsumerWidget {
  const HampersDetailScreen({required this.hampersID, super.key});

  final int hampersID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Hampers>> hampersList = ref.watch(hampersLogicProvider);
    final Hampers hampers = hampersList.maybeWhen(
      data: (List<Hampers> data) => getHampersById(data, hampersID),
      orElse: makeNullHampers,
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 400,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: ZoomOverlay(
                child: CachedNetworkImage(
                  imageUrl: '$storageUrl/hampers/${hampers.picture}',
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
          const SliverGap(16),
          HampersInfo(hampers: hampers),
        ],
      ),
    );
  }
}

class HampersInfo extends ConsumerWidget {
  const HampersInfo({required this.hampers, super.key});

  final Hampers hampers;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          <Widget>[
            Text(
              'Hampers',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ).animate().fadeIn(delay: 400.ms, duration: 300.ms).slideY(
                  begin: 2,
                  duration: 600.ms,
                  curve: Curves.easeOutExpo,
                ),
            Text(
              hampers.name,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
            ).animate().fadeIn(delay: 500.ms, duration: 300.ms).slideY(
                  begin: 2,
                  duration: 600.ms,
                  curve: Curves.easeOutExpo,
                ),
            Text(
              'Rp. ${hampers.price}',
              style: Theme.of(context).textTheme.titleLarge,
            ).animate().fadeIn(delay: 600.ms, duration: 300.ms).slideY(
                  begin: 2,
                  duration: 600.ms,
                  curve: Curves.easeOutExpo,
                ),
            const Gap(16),
            Text(
              "What's inside the box?",
              style: Theme.of(context).textTheme.titleMedium,
            ).animate().fadeIn(delay: 700.ms, duration: 300.ms).slideY(
                  begin: 2,
                  duration: 600.ms,
                  curve: Curves.easeOutExpo,
                ),
            const Gap(8),
            InsideHampersBox(
              hampersDetail: hampers.hampersDetail,
            ).animate(delay: 800.ms).fadeIn(duration: 300.ms).slideY(
                  begin: 2,
                  duration: 600.ms,
                  curve: Curves.easeOutExpo,
                ),
          ],
        ),
      ),
    );
  }
}

class InsideHampersBox extends StatelessWidget {
  const InsideHampersBox({required this.hampersDetail, super.key});

  final List<HampersDetail> hampersDetail;

  @override
  Widget build(BuildContext context) {
    final List<HampersDetail> product =
        hampersDetail.where((HampersDetail element) => element.product != null).toList();
    final List<HampersDetail> ingredient =
        hampersDetail.where((HampersDetail element) => element.ingredients != null).toList();
    return Column(
      children: <Widget>[
        Column(
          children: product.map((HampersDetail element) {
            return SizedBox(
              height: 120,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: CachedNetworkImage(
                          imageUrl: '$storageUrl/product/${element.product?.picture}',
                          progressIndicatorBuilder:
                              (BuildContext context, String url, DownloadProgress downloadProgress) =>
                                  Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                          fit: BoxFit.cover,
                          memCacheHeight: 300,
                          memCacheWidth: 300,
                        ),
                      ),
                      const Gap(16),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              element.product?.name ?? 'Unknown',
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Text(
                                  element.product?.description ?? 'Unknown',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
        const Gap(16),
        const Text('We also include the item below...'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ingredient
              .map((HampersDetail element) {
                return Text(
                  element.ingredients?.name ?? 'Unknown',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
                );
              })
              .toList()
              .map((Text e) => Padding(padding: const EdgeInsets.all(8), child: e))
              .toList(),
        ),
      ],
    );
  }
}
