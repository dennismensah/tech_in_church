import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/domain/chats/chat_message.dart';
import 'package:tech_in_church/domain/chats/counsellor.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';

class CounsellorListView extends StatelessWidget {
  final List<Counsellor> counsellors;
  const CounsellorListView({Key? key, required this.counsellors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      itemCount: counsellors.length,
      itemBuilder: (context, int index) {
        return GestureDetector(
          onTap: () {
            context.router.push(
              ChatMessageRoute(
                msgs: counsellors[index].chat?.messages ?? [],
                counsellorId: counsellors[index].id,
                counsellorName: counsellors[index].name,
                conversationId: counsellors[index].conversation_id,
              ),
            );
          },
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (counsellors[index].avatar != null)
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: CachedNetworkImageProvider(
                            counsellors[index].avatar!,
                          ),
                        ),
                      ),
                    )
                  else
                    CircleAvatar(
                      radius: 25,
                      child: Text(
                        counsellors[index].name.substring(0, 2).toUpperCase(),
                        style: const TextStyle(letterSpacing: 2),
                      ),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    counsellors[index].name,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
