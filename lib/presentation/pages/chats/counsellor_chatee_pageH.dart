import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/chat/counsellor_chatee/counsellor_chatee_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/chats/widgets/counsellor_chatee_view.dart';
import 'package:tech_in_church/presentation/pages/gallery/widgets/gallery_view.dart';

class CounsellorChateePageH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CounsellorChateeBloc>()..add(const CounsellorChateeEvent.counsellorChatsFetched()),
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        // appBar: AppBar(
        //   title: const Text(
        //     'Chats',
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   backgroundColor: AppColors.appColor,
        //   iconTheme: IconThemeData(color: Colors.white),
        //   elevation: 0.0,
        // ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child: CounsellorChateeView(),
        ),
      ),
    );
  }
}
