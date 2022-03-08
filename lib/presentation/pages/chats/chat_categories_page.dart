import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/chat_category/chat_category_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/chats/widgets/chat_categories_view.dart';

class ChatCategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ChatCategoryBloc>()..add(const ChatCategoryEvent.chatCategoriesFetched()),
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: const Text(
            'Categories',
            style: TextStyle(color: Colors.white,fontFamily: 'Raleway'),
          ),
          backgroundColor: AppColors.appColor,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0.0,
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child: ChatCategoryView(),
        ),
      ),
    );
  }
}
