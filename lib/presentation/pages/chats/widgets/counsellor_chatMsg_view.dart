import 'dart:convert';

import 'package:bubble/bubble.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_format/date_format.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/chat/chat_actions/chat_actions_bloc.dart';
import 'package:tech_in_church/application/chat/chat_bloc.dart';
import 'package:tech_in_church/domain/chats/chat.dart';
import 'package:tech_in_church/domain/chats/chat_message.dart';
import 'package:tech_in_church/domain/chats/counsellor.dart';
import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';

class CounsellorChatMessageView extends HookWidget {
  // final List<ChatMessage> msgs;
  // final int counsellorId;
  // final int conversationId;
  const CounsellorChatMessageView({
    Key? key,
    // required this.msgs,
    // required this.counsellorId,
    // required this.conversationId,
    // required this.counsellorName,
  }) : super(key: key);

  Map<String, List<ChatMessage>> orderMessages(List<ChatMessage> chats) {
    List<ChatMessage> cm = chats;
    if (cm.length == 0) return {};
    cm.sort((a, b) =>
        DateTime.parse(a.sent_on).compareTo(DateTime.parse(b.sent_on)));
    var map = <String, List<ChatMessage>>{};
    for (int i = 0; i < cm.length; i++) {
      final dayName = getDayName(cm[i].sent_on);
      final newm = map[dayName] ?? [];
      newm.add(cm[i]);
      map.putIfAbsent(dayName, () => newm);
    }
    return map;
  }

  String getDayName(String dateString) {
    final date = DateTime.parse(dateString);
    if (date.day == DateTime.now().day &&
        date.month == DateTime.now().month &&
        date.year == DateTime.now().year)
      return 'Today';
    else if (date.day == DateTime.now().subtract(Duration(days: 1)).day &&
        date.month == DateTime.now().subtract(Duration(days: 1)).month &&
        date.year == DateTime.now().subtract(Duration(days: 1)).year)
      return 'Yesterday';
    return formatDate(date, [dd, ' ', MM, ' ', yyyy]);
  }

  @override
  Widget build(BuildContext context) {
    final messages = useState<Map<String, List<ChatMessage>>>({});
    final contro = useTextEditingController();
    final sc = useScrollController();
    final loaded = useState(false);
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      if (sc.hasClients) {
        sc.jumpTo(sc.position.maxScrollExtent);
      }
    });
    useEffect(
      () {
        FirebaseMessaging.onMessage.listen((RemoteMessage message) {
          print(message.data);
          final c = message.data;
          final d = c['conversation'];

          final decoded = jsonDecode(d) as Map<String, dynamic>;
          final chat = Chat.fromJson(decoded);

          // final m = jsonDecode(d)['messages'] as List;
          // final e = ChatMessage.fromJson(m[0]);
          final lastVal = messages.value.entries.length > 0
              ? messages.value.entries.last.value
              : [];
          final laa = <ChatMessage>[...lastVal, chat.messages[0]];
          // if (conversationId == chat.messages[0].conversation_id) {
            messages.value['Today'] = laa;
            messages.notifyListeners();
            FlutterRingtonePlayer.play(
              android: AndroidSounds.notification,
              ios: IosSounds.glass,
              asAlarm: false, // Android only - all APIs
            );
          // }
        });
      },
      const [],
    );

    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, cstate) {},
      builder: (context, cstate) {
        return BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            int userid = state.maybeMap(
                authenticated: (e) => e.usertoken.user.id, orElse: () => 0);
            return cstate.map(
              initial: (_) => const SizedBox(),
              loading: (_) => const Center(
                child: CupertinoActivityIndicator(
                  radius: 30,
                ),
              ),
              loadedSuccessfully: (e) {
                SchedulerBinding.instance!.addPostFrameCallback((_) {
                  if (!loaded.value) {
                    messages.value = orderMessages(e.chat.messages);
                    loaded.value = true;
                    // messages.notifyListeners();
                  }
                });

                // return ListView.builder(
                //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                //   itemCount: e.messages.length,
                //   itemBuilder: (context, int index) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        controller: sc,
                        itemCount: messages.value.keys.length,
                        itemBuilder: (context, int idx) {
                          final group = messages
                                  .value[messages.value.keys.elementAt(idx)] ??
                              [];
                          final title = messages.value.keys.elementAt(idx);

                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(title),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.white,
                                ),
                              ),
                              ...List.generate(group.length, (index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      child:
                                          // Visibility(
                                          //   visible: group[index].sender ==
                                          //           counsellorId ||
                                          //       counsellorId == group[index].recipient,
                                          // child:
                                          Bubble(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    group[index].message,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  DateFormat('HH:mm a').format(
                                                      DateTime.parse(
                                                          group[index]
                                                              .sent_on)),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .subtitle2
                                                      ?.copyWith(
                                                          color: Colors
                                                              .grey.shade500),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        alignment: userid == group[index].sender
                                            ? Alignment.centerRight
                                            : Alignment.centerLeft,
                                        showNip: true,
                                        nip: userid == group[index].sender
                                            ? BubbleNip.rightBottom
                                            : BubbleNip.leftBottom,
                                      ),
                                      // ),
                                    ),
                                  ],
                                );
                              })
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: TextFormField(
                                controller: contro,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(color: Colors.grey),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: IconButton(
                              icon: Icon(
                                Icons.send,
                                color: Colors.blue,
                                size: 27,
                              ),
                              onPressed: () {
                                if (contro.text.isEmpty)
                                  return;
                                else {
                                  // context.read<ChatActionsBloc>().add(
                                  //     ChatActionsEvent.messageSent(
                                  //         contro.text, counsellorId));
                                  contro.clear();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
                //   },
                // );
              },
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
      },
    );
  }
}

// import 'dart:convert';

// import 'package:bubble/bubble.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:date_format/date_format.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';
// import 'package:tech_in_church/application/auth/auth_bloc.dart';
// import 'package:tech_in_church/application/chat/chat_bloc.dart';
// import 'package:tech_in_church/domain/chats/chat.dart';
// import 'package:tech_in_church/domain/chats/chat_message.dart';
// import 'package:tech_in_church/domain/chats/counsellor.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:intl/intl.dart';

// class ChatMessageView extends HookWidget {
//   final List<ChatMessage> msgs;
//   final int counsellorId;
//   final String counsellorName;
//   const ChatMessageView(
//       {Key? key,
//       required this.msgs,
//       required this.counsellorId,
//       required this.counsellorName})
//       : super(key: key);

//   Map<String, List<ChatMessage>> orderMessages() {
//     if (msgs.length == 0) return {};
//     msgs.sort((a, b) =>
//         DateTime.parse(a.sent_on).compareTo(DateTime.parse(b.sent_on)));
//     var map = <String, List<ChatMessage>>{};
//     for (int i = 0; i < msgs.length; i++) {
//       final dayName = getDayName(msgs[i].sent_on);
//       final newm = map[dayName] ?? [];
//       newm.add(msgs[i]);
//       map.putIfAbsent(dayName, () => newm);
//     }
//     return map;
//   }

//   String getDayName(String dateString) {
//     final date = DateTime.parse(dateString);
//     if (date.day == DateTime.now().day &&
//         date.month == DateTime.now().month &&
//         date.year == DateTime.now().year)
//       return 'Today';
//     else if (date.day == DateTime.now().subtract(Duration(days: 1)).day &&
//         date.month == DateTime.now().subtract(Duration(days: 1)).month &&
//         date.year == DateTime.now().subtract(Duration(days: 1)).year)
//       return 'Yesterday';
//     return formatDate(date, [dd, ' ', MM, ' ', yyyy]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final messages = useState(orderMessages());
//     final contro = useTextEditingController();
//     final sc = useScrollController();
//     SchedulerBinding.instance!.addPostFrameCallback((_) {
//       sc.jumpTo(sc.position.maxScrollExtent);
//     });
//     useEffect(() {
//       FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//         print(message.data);
//         final c = message.data;
//         final d = c['conversation'];
//         final m = jsonDecode(d)['messages'] as List;
//         final e = ChatMessage.fromJson(m[0]);
//         final laa = <ChatMessage>[...messages.value.entries.last.value, e];
//         messages.value['Today'] = laa;
//         messages.notifyListeners();
//         FlutterRingtonePlayer.play(
//           android: AndroidSounds.notification,
//           ios: IosSounds.glass,
//           asAlarm: false, // Android only - all APIs
//         );
//       });
//     }, const []);
//     return BlocConsumer<ChatBloc, ChatState>(
//       listener: (context, state) {
//         state.maybeMap(
//           messageSentSuccessfully: (a) {},
//           messageNotSent: (_) {},
//           orElse: () {},
//         );
//       },
//       builder: (context, state) {
//         return BlocBuilder<AuthBloc, AuthState>(
//           builder: (context, state) {
//             int userid = state.maybeMap(
//                 authenticated: (e) => e.usertoken.user.id, orElse: () => 0);
//             return Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     controller: sc,
//                     itemCount: messages.value.keys.length,
//                     itemBuilder: (context, int idx) {
//                       final group =
//                           messages.value[messages.value.keys.elementAt(idx)] ??
//                               [];
//                       final title = messages.value.keys.elementAt(idx);

//                       return Column(
//                         children: [
//                           Container(
//                             margin: EdgeInsets.symmetric(vertical: 10),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 10),
//                             child: Text(title),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(13),
//                               color: Colors.white,
//                             ),
//                           ),
//                           ...List.generate(group.length, (index) {
//                             return Column(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       vertical: 10, horizontal: 10),
//                                   child:
//                                   // Visibility(
//                                   //   visible: group[index].sender ==
//                                   //           counsellorId ||
//                                   //       counsellorId == group[index].recipient,
//                                     // child:
//                                     Bubble(
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Flexible(
//                                                 child: Text(
//                                                   group[index].message,
//                                                   style: Theme.of(context)
//                                                       .textTheme
//                                                       .subtitle1,
//                                                 ),
//                                               ),
//                                               const SizedBox(
//                                                 width: 15,
//                                               ),
//                                               Text(
//                                                DateFormat('HH:mm a').format(DateTime.parse(group[index].sent_on)),
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .subtitle2
//                                                     ?.copyWith(
//                                                         color: Colors
//                                                             .grey.shade500),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                       alignment: userid == group[index].sender
//                                           ? Alignment.centerRight
//                                           : Alignment.centerLeft,
//                                       showNip: true,
//                                       nip: userid == group[index].sender
//                                           ? BubbleNip.rightBottom
//                                           : BubbleNip.leftBottom,
//                                     ),
//                                   // ),
//                                 ),
//                               ],
//                             );
//                           })
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//                   height: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.white,
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Container(
//                           child: TextFormField(
//                             controller: contro,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .headline6
//                                 ?.copyWith(color: Colors.grey),
//                             decoration: InputDecoration(
//                                 border: InputBorder.none,
//                                 contentPadding: EdgeInsets.symmetric(
//                                     horizontal: 10, vertical: 5)),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 6),
//                         child: IconButton(
//                           icon: Icon(
//                             Icons.send,
//                             color: Colors.blue,
//                             size: 27,
//                           ),
//                           onPressed: () {
//                             if (contro.text.isEmpty)
//                               return;
//                             else {
//                               context.read<ChatBloc>().add(
//                                   ChatEvent.messageSent(
//                                       contro.text, counsellorId));
//                               contro.clear();
//                             }
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//         );
//       },
//     );
//   }
// }
