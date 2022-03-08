part of 'announcements_bloc.dart';

@freezed
class AnnouncementsState with _$AnnouncementsState {
  const factory AnnouncementsState.initial() = Initial;
  const factory AnnouncementsState.loading() = Loading;
  const factory AnnouncementsState.loadedSuccessfully(List<Announcement> announcements) = LoadedSuccessfully;
  const factory AnnouncementsState.loadedUnSuccessfully(AnnouncementFailure failure) = LoadedUnsuccessfully;
}
