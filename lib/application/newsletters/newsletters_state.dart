part of 'newsletters_bloc.dart';

@freezed
class NewslettersState with _$NewslettersState {
  const factory NewslettersState.initial() = Initial;
  const factory NewslettersState.loading() = Loading;
  const factory NewslettersState.loadedSuccessfully(List<Newsletter> newsletters) = LoadedSuccessfully;
  const factory NewslettersState.loadedUnSuccessfully(NewsletterFailure failure) = LoadedUnsuccessfully;
}
