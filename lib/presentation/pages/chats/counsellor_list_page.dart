import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/domain/chats/counsellor.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/chats/widgets/counsellor_list_view.dart';

class CounsellorListPage extends StatelessWidget {
  final List<Counsellor> counsellors;
  const CounsellorListPage({Key? key,required this.counsellors}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
      appBar: AppBar(
        title: const Text(
          'Counsellors',
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
        child: CounsellorListView(counsellors: counsellors),
      ),
    );
  }
}