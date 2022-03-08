import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/chat/counsellor_chatee/counsellor_chatee_bloc.dart';
import 'package:tech_in_church/application/gallery/gallery_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/domain/auth/user.dart';
import 'package:tech_in_church/domain/gallery/gallery_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:intl/intl.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

class CounsellorChateeView extends StatelessWidget {
  void showModal(
      BuildContext context, List<GalleryImage> images, String title) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Container(
          decoration: BoxDecoration(
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
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                alignment: Alignment.center,
                width: 1.sw,
                decoration: BoxDecoration(
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
                      (states) => RoundedRectangleBorder(
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
    return BlocBuilder<CounsellorChateeBloc, CounsellorChateeState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox(),
          loading: (_) => const Center(
            child: CupertinoActivityIndicator(
              radius: 30,
            ),
          ),
          loadedSuccessfully: (e) => ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            itemCount: e.chat.length,
            itemBuilder: (context, int index) {
              User? user = context.read<AuthBloc>().state.maybeMap(
                  authenticated: (e) => e.usertoken.user,
                  unauthenticated: (_) => null,
                  orElse: () => null);
              final names = e.chat[index].last_message.sendername.split(' ');
              return GestureDetector(
                onTap: () {
                  context.router.push(ChatMessageRoute(
                      msgs: [],
                      isCounsellor: true,
                      conversationId: e.chat[index].conversation_id,
                      counsellorId: user?.id ?? 0,
                      senderId: e.chat[index].last_message.sender,
                      counsellorName: e.chat[index].last_message.sendername));
                },
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (e.chat[index].last_message.senderimage != null)
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: CircleAvatar(
                                  backgroundImage: CachedNetworkImageProvider(
                                    e.chat[index].last_message.senderimage!,
                                  ),
                                ),
                              )
                            else
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: CircleAvatar(
                                  child: Text(
                                    '${names[0][0].toUpperCase()} ${names[1][1].toUpperCase()}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                e.chat[index].last_message.sendername,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade200,
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Text(
                                  e.chat[index].last_message.message,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(color: Colors.black),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              DateFormat('HH:mm a').format(DateTime.parse(
                                  e.chat[index].last_message.sent_on)),
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(color: Colors.grey.shade500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          notLoaded: (_) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FaIcon(
                  FontAwesomeIcons.exclamationCircle,
                  size: 100,
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'An error occured. Please try again.',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
