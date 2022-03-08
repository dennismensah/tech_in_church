import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_in_church/application/gallery/gallery_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/domain/gallery/gallery_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({Key? key}) : super(key: key);

  void showModal(
      BuildContext context, List<GalleryImage> images, String title) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 0.2.sh),
          height: 100,
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                alignment: Alignment.center,
                width: 1.sw,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  // color: Colors.grey.shade200,
                ),
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: AppColors.appColor),
                ),
              ),
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                  ),
                  items: images.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return CachedNetworkImage(
                          imageUrl: i.image,
                          fit: BoxFit.fill,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: 1.sw,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => AppColors.appColor,
                    ),
                    shape: MaterialStateProperty.resolveWith(
                      (states) => const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                    ),
                    textStyle: MaterialStateProperty.resolveWith(
                      (states) => TextStyle(fontSize: 20.sp),
                    ),
                  ),
                  onPressed: () {
                    context.router.pop();
                  },
                  child: Text(
                    'Close',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryBloc, GalleryState>(
      builder: (context, state) {
        return LiquidPullToRefresh(
          backgroundColor: Colors.white,
          color: Colors.blue,
          showChildOpacityTransition: false,
          onRefresh: () async {
            context
                .read<GalleryBloc>()
                .add(const GalleryEvent.galleryFetched());
          }, // refresh callback
          child: state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            ),
            loadedSuccessfully: (e) => e.galleries.isEmpty
                ? Center(
                    child: Text(Strings.emptyList,
                        style: Theme.of(context).textTheme.subtitle1))
                : ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    itemCount: e.galleries.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (e.galleries[index].images.isNotEmpty) {
                            showModal(context, e.galleries[index].images,
                                e.galleries[index].title);
                          }
                        },
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e.galleries[index].title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      formatDate(
                                          DateTime.parse(
                                              e.galleries[index].created_at),
                                          [M, ' ', dd, ', ', yyyy]),
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          ?.copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                e.galleries[index].thumbnail == null
                                    ? const SizedBox.shrink()
                                    : CachedNetworkImage(
                                        height: 200,
                                        width: 1.sw,
                                        imageUrl: e.galleries[index].thumbnail,
                                        fit: BoxFit.cover,
                                      ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
            loadedUnSuccessfully: (f) {
              final reason = f.failure.maybeMap(
                  noNetwork: (_) => NotLoadedReason.noNetwork,
                  orElse: () => NotLoadedReason.other);
              return NotLoaded(
                notLoadedReason: reason,
                onTryAgain: () {
                  context
                      .read<GalleryBloc>()
                      .add(const GalleryEvent.galleryFetched());
                },
              );
            },
          ),
        );
      },
    );
  }
}
