import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/church_today/church_today_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/church_today/widgets/church_today_view.dart';

class ChurchTodayPage extends StatelessWidget {
  const ChurchTodayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ChurchTodayBloc>()..add(const ChurchTodayEvent.churchTodayRecordsFetched()),
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: const Text(
            'Church Today',
            style: TextStyle(color: Colors.white,fontFamily: 'Raleway'),
          ),
          backgroundColor: AppColors.appColor,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0.0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child: const ChurchTodayView(),
        ),
      ),
    );
  }
}
