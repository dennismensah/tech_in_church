import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/announcements/announcement.dart';
import 'package:tech_in_church/domain/announcements/announcement_failure.dart';
import 'package:tech_in_church/domain/announcements/i_announcement_remote_datasource.dart';
import 'package:tech_in_church/domain/announcements/i_announcement_repository.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAnnouncementRepository)
class AnnouncementsRepository extends IAnnouncementRepository {
  final IAnnouncementRemoteDataSource announcementRemoteDataSource;
  final INetworkInfo networkInfo;
  AnnouncementsRepository(
      {required this.announcementRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<AnnouncementFailure, List<Announcement>>> getAnnouncements() async {
    late Either<AnnouncementFailure, List<Announcement>> result =
        left(const AnnouncementFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await announcementRemoteDataSource.getAnnouncements();
        switch (response?.statusCode) {
          case 200:
            final announcementResponse = (response?.data?['data'] as List)
                .map((e) => Announcement.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(announcementResponse);
            break;
        }
      } else {
        result = left(const AnnouncementFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const AnnouncementFailure.serverError());
    }
    return result;
  }
}
