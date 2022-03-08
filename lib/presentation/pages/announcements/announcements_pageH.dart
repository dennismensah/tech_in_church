import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/announcements/announcements_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/announcements/widgets/announcements_view.dart';

class AnnouncementsPageH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AnnouncementsBloc>()..add(const AnnouncementsEvent.announcementFetched()),
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        // appBar: AppBar(
        //   title: const Text(
        //     'Announcements',
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
          child: AnnouncementsView(),
        ),
      ),
    );
  }
}
