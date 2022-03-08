import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/chat_category/chat_category_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class ChatCategoryView extends StatelessWidget {
  const ChatCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCategoryBloc, ChatCategoryState>(
      builder: (context, state) {
        return LiquidPullToRefresh(
          backgroundColor: Colors.white,
          color: Colors.blue,
          showChildOpacityTransition: false,
          onRefresh: () async {
            context
                .read<ChatCategoryBloc>()
                .add(const ChatCategoryEvent.chatCategoriesFetched());
          }, // refresh callback
          child: state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            ),
            loadedSuccessfully: (e) => e.categories.isEmpty
                ? Center(
                    child: Text(Strings.emptyList,
                        style: Theme.of(context).textTheme.subtitle1))
                : ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    itemCount: e.categories.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          context.router.push(CounsellorListRoute(
                              counsellors: e.categories[index].counsellors));
                        },
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.categories[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
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
                      .read<ChatCategoryBloc>()
                      .add(const ChatCategoryEvent.chatCategoriesFetched());
                },
              );
            },
          ),
        );
      },
    );
  }
}
