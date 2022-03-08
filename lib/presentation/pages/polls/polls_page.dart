import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/gallery/gallery_bloc.dart';
import 'package:tech_in_church/application/polls/poll_actions/poll_actions_bloc.dart';
import 'package:tech_in_church/application/polls/polls_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/polls/widgets/polls_view.dart';

class PollsPage extends StatelessWidget {
  const PollsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PollsBloc>()
            ..add(
              const PollsEvent.pollsFetched(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<PollActionsBloc>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: const Text(
            'Polls',
            style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
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
          child: PollsView(),
        ),
      ),
    );
  }
}
