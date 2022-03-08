import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/non_pay_event/non_pay_event_bloc.dart';
import 'package:tech_in_church/application/non_pay_event/non_pay_events_actions/non_pay_events_actions_bloc.dart';
import 'package:tech_in_church/application/offering/offering_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/non_pay_events/widgets/non_pay_event_view.dart';

class NonPayEventsPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NonPayEventBloc>()
            ..add(const NonPayEventEvent.nonPayEventFetched()),
        ),
        BlocProvider(
          create: (context) => getIt<NonPayEventsActionsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OfferingBloc>(),
        ),
      ],
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: const Text(
            'Events',
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
          child: NonPayEventView(scaffoldstate: _scaffoldKey,),
        ),
      ),
    );
  }
}
