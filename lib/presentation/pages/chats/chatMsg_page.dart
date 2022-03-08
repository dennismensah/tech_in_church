import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/chat/chat_actions/chat_actions_bloc.dart';
import 'package:tech_in_church/application/chat/chat_bloc.dart';
import 'package:tech_in_church/domain/chats/chat_message.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/chats/widgets/chatMsg_view.dart';

class ChatMessagePage extends StatelessWidget {
  final List<ChatMessage> msgs;
  final int counsellorId;
  final String counsellorName;
  final int conversationId;
  final bool? isCounsellor;
  final int? senderId;
  const ChatMessagePage({
    Key? key,
    required this.msgs,
    this.senderId,
    this.isCounsellor,
    required this.conversationId,
    required this.counsellorId,
    required this.counsellorName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
      appBar: AppBar(
        title: Text(
          counsellorName,
          style: TextStyle(color: Colors.white,fontFamily: 'Raleway'),
        ),
        backgroundColor: AppColors.appColor,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<ChatBloc>()..add(ChatEvent.chatsFetched(conversationId)),
          ),
          BlocProvider(
            create: (context) => getIt<ChatActionsBloc>(),
          ),
        ],
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.grey,
              ],
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            // color: Colors.black12,
            // image: DecorationImage(
            //   image: AssetImage('assets/images/chatbg.jpeg'),
            //   fit: BoxFit.cover,
              
            // ),
          ),
          child: ChatMessageView(
            msgs: msgs,
            counsellorId: counsellorId,
            counsellorName: counsellorName,
            senderId: senderId,
            conversationId: conversationId,
            isCounsellor: isCounsellor ?? null,
          ),
        ),
      ),
      // BlocProvider(
      //   create: (context) => getIt<ChatBloc>()..add(ChatEvent.chatsFetched(conversationId)),
      //   child:
      // ),
    );
  }
}
