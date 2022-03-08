part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loadedSuccessfully(Home homeItems) = LoadedSuccessfully;
  const factory HomeState.loadedUnSuccessfully(HomeFailure failure) = LoadedUnsuccessfully;
}
