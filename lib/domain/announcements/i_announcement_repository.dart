import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/announcements/announcement.dart';
import 'package:tech_in_church/domain/announcements/announcement_failure.dart';

abstract class IAnnouncementRepository {
  Future<Either<AnnouncementFailure, List<Announcement>>> getAnnouncements();
}