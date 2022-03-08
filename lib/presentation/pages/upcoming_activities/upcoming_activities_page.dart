import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/upcoming_activities/upcoming_activities_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/upcoming_activities/widgets/upcoming_activities_view.dart';

class UpcomingActivitiesPage extends StatelessWidget {
  const UpcomingActivitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UpcomingActivitiesBloc>()..add(const UpcomingActivitiesEvent.upcomingActivitiesFetched()),
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: const Text(
            'Upcoming Activities',
            style: TextStyle(color: Colors.white,fontFamily: 'Raleway'),
          ),
          backgroundColor: AppColors.appColor,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0.0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child: const UpcomingActivitiesView(),
        ),
      ),
    );
  }
}
