import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/announcements/announcement.dart';
import 'package:tech_in_church/domain/announcements/announcement_failure.dart';
import 'package:tech_in_church/domain/announcements/i_announcement_repository.dart';

part 'announcements_event.dart';
part 'announcements_state.dart';
part 'announcements_bloc.freezed.dart';

@Injectable()
class AnnouncementsBloc extends Bloc<AnnouncementsEvent, AnnouncementsState> {
  final IAnnouncementRepository _announcementRepository;
  AnnouncementsBloc(this._announcementRepository)
      : super(const AnnouncementsState.initial());

  @override
  Stream<AnnouncementsState> mapEventToState(
    AnnouncementsEvent event,
  ) async* {
    yield* event.map(announcementFetched: (e) async* {
      yield const AnnouncementsState.loading();
      final galleriesOption = await _announcementRepository.getAnnouncements();
      yield galleriesOption.fold(
        (l) =>  AnnouncementsState.loadedUnSuccessfully(l),
        (r) => AnnouncementsState.loadedSuccessfully(r),
      );
    });
  }
}
