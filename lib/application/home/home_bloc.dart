import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/home/home.dart';
import 'package:tech_in_church/domain/home/home_failure.dart';
import 'package:tech_in_church/domain/home/i_home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _homeRepository;
  HomeBloc(this._homeRepository) : super(const HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(homeItemsFetched: (e) async* {
      yield const HomeState.loading();
      final galleriesOption = await _homeRepository.getHomeRecords();
      yield galleriesOption.fold(
        (l) =>  HomeState.loadedUnSuccessfully(l),
        (r) => HomeState.loadedSuccessfully(r),
      );
    });
  }
}
