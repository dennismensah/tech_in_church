import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/application/newsletters/newsletters_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class NewslettersView extends StatelessWidget {
  const NewslettersView({Key? key}) : super(key: key);

  void showModal(BuildContext context, String title, String message,
      String date, String creator) {
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
          // width: 0.8.sw,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   'Created by :  $creator',
                      //   style: Theme.of(context)
                      //       .textTheme
                      //       .subtitle2
                      //       ?.copyWith(color: Colors.grey.shade500),
                      // ),
                      // SizedBox(height: 5,),
                      //  Text(
                      //   'Created on :  $date',
                      //   style: Theme.of(context)
                      //       .textTheme
                      //       .subtitle2
                      //       ?.copyWith(color: Colors.grey.shade500),
                      // ),
                      Html(
                        data: message,
                        style: {'font-size': Style(fontSize: FontSize.large)},
                      ),
                    ],
                  ),
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
    return BlocBuilder<NewslettersBloc, NewslettersState>(
      builder: (context, state) {
        return LiquidPullToRefresh(
          backgroundColor: Colors.white,
          color: Colors.blue,
          showChildOpacityTransition: false,
          onRefresh: () async {
            context
                .read<NewslettersBloc>()
                .add(const NewslettersEvent.newslettersFetched());
          }, // refresh callback
          child: state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            ),
            loadedSuccessfully: (e) => e.newsletters.isEmpty
                ? Center(
                    child: Text(Strings.emptyList,
                        style: Theme.of(context).textTheme.subtitle1))
                : ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    itemCount: e.newsletters.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          showModal(
                            context,
                            e.newsletters[index].title,
                            e.newsletters[index].message,
                            formatDate(
                                DateTime.parse(e.newsletters[index].created_at),
                                [M, ' ', dd, ', ', yyyy]),
                            e.newsletters[index].creator,
                          );
                        },
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.newsletters[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  formatDate(
                                      DateTime.parse(
                                          e.newsletters[index].created_at),
                                      [M, ' ', dd, ', ', yyyy]),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(color: Colors.grey),
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
                      .read<NewslettersBloc>()
                      .add(const NewslettersEvent.newslettersFetched());
                },
              );
            },
          ),
        );
      },
    );
  }
}
