import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/church_today/church_today.dart';
import 'package:tech_in_church/domain/church_today/church_today_failure.dart';
import 'package:tech_in_church/domain/church_today/i_church_today_repository.dart';

part 'church_today_event.dart';
part 'church_today_state.dart';
part 'church_today_bloc.freezed.dart';

@Injectable()
class ChurchTodayBloc extends Bloc<ChurchTodayEvent, ChurchTodayState> {
  final IChurchTodayRepository _churchTodayRepository;
  ChurchTodayBloc(this._churchTodayRepository)
      : super(const ChurchTodayState.initial());

  @override
  Stream<ChurchTodayState> mapEventToState(
    ChurchTodayEvent event,
  ) async* {
    yield* event.map(
      churchTodayRecordsFetched: (e) async* {
        yield const ChurchTodayState.loading();
        final galleriesOption = await _churchTodayRepository.getChurchTodayRecords();
        yield galleriesOption.fold(
          (l) =>  ChurchTodayState.loadedUnSuccessfully(l),
          (r) => ChurchTodayState.loadedSuccessfully(r),
        );
      },
    );
  }
}
