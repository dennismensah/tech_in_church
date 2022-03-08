import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tech_in_church/application/upcoming_activities/upcoming_activities_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/domain/upcoming_activities/upcoming_activity.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class UpcomingActivitiesView extends HookWidget {
  const UpcomingActivitiesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final calendarController = useState(CalendarController());
    final selectedEvent = useState<UpcomingActivity?>(null);
    return BlocBuilder<UpcomingActivitiesBloc, UpcomingActivitiesState>(
      builder: (context, state) {
        return LiquidPullToRefresh(
          backgroundColor: Colors.white,
          color: Colors.blue,
          showChildOpacityTransition: false,
          onRefresh: () async {
            context
                .read<UpcomingActivitiesBloc>()
                .add(const UpcomingActivitiesEvent.upcomingActivitiesFetched());
          }, // refresh callback
          child: state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            ),
            loadedSuccessfully: (e) => SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: TableCalendar(
                      calendarController: calendarController.value,
                      enabledDayPredicate: (DateTime date) {
                        return e.upcomingActivities
                            .map((e) {
                              return e.start_date;
                            })
                            .toList()
                            .contains(
                                formatDate(date, [yyyy, '-', mm, '-', dd]));
                      },
                      onDaySelected: (DateTime d, List g, List f) {
                        selectedEvent.value = e.upcomingActivities.firstWhere(
                            (element) =>
                                DateTime.parse(element.start_date).day == d.day,
                            orElse: null);
                      },
                      events: Map.fromEntries(
                        e.upcomingActivities.map(
                          (value) => MapEntry(
                              DateTime.parse(value.start_date), [value.title]),
                        ),
                      ),
                      calendarStyle: const CalendarStyle(
                        markersColor: Colors.green,
                        highlightSelected: false,
                        highlightToday: false,
                        // contentDecoration: BoxDecoration(
                        //   color: Colors.white
                        // )
                      ),
                    ),
                  ),
                  selectedEvent.value == null
                      ? SizedBox()
                      : Card(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            width: 1.sw,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Event Details',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  selectedEvent.value?.title ?? 'N/A',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  selectedEvent.value?.description ?? 'N/A',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(color: Colors.black),
                                    children: [
                                      TextSpan(text: 'Starts on '),
                                      TextSpan(
                                        text: formatDate(
                                            DateTime.parse(selectedEvent
                                                    .value?.start_date ??
                                                DateTime.now().toString()),
                                            [d, ' ', MM, ' ', yyyy]),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(color: Colors.black),
                                    children: [
                                      const TextSpan(text: 'Ends on '),
                                      TextSpan(
                                        text: formatDate(
                                            DateTime.parse(
                                                selectedEvent.value?.end_date ??
                                                    DateTime.now().toString()),
                                            [d, ' ', MM, ' ', yyyy]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                ],
              ),
            ),
            loadedUnSuccessfully: (f) {
              final reason = f.failure.maybeMap(
                  noNetwork: (_) => NotLoadedReason.noNetwork,
                  orElse: () => NotLoadedReason.other);
              return NotLoaded(
                notLoadedReason: reason,
                onTryAgain: () {
                  context
                      .read<UpcomingActivitiesBloc>()
                      .add(const UpcomingActivitiesEvent.upcomingActivitiesFetched());
                },
              );
            },
          ),
        );
      },
    );
  }
}
