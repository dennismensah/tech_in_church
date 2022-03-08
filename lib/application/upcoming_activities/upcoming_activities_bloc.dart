import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/upcoming_activities/i_upcoming_activities_repository.dart';
import 'package:tech_in_church/domain/upcoming_activities/upcoming_activity.dart';
import 'package:tech_in_church/domain/upcoming_activities/upcoming_activity_failure.dart';

part 'upcoming_activities_event.dart';
part 'upcoming_activities_state.dart';
part 'upcoming_activities_bloc.freezed.dart';

@Injectable()
class UpcomingActivitiesBloc
    extends Bloc<UpcomingActivitiesEvent, UpcomingActivitiesState> {
  final IUpcomingActivitiesRepository _upcomingActivitiesRepository;
  UpcomingActivitiesBloc(this._upcomingActivitiesRepository)
      : super(const UpcomingActivitiesState.initial());

  @override
  Stream<UpcomingActivitiesState> mapEventToState(
    UpcomingActivitiesEvent event,
  ) async* {
    yield* event.map(
      upcomingActivitiesFetched: (e) async* {
        yield const UpcomingActivitiesState.loading();
        final galleriesOption = await _upcomingActivitiesRepository.getUpcomingActivities();
        yield galleriesOption.fold(
          (l) =>  UpcomingActivitiesState.loadedUnSuccessfully(l),
          (r) => UpcomingActivitiesState.loadedSuccessfully(r),
        );
      },
    );
  }
}
