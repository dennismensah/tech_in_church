import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_in_church/domain/announcements/announcement.dart';
import 'package:tech_in_church/domain/church_today/church_today.dart';
import 'package:tech_in_church/domain/home/counselling_group.dart';
import 'package:tech_in_church/domain/youtube_links/youtube_link.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class Home with _$Home {
  const factory Home({
    // required int id,
    required List<YoutubeLink> youtube,
    required ChurchToday? summary,
    required List<Announcement> announcement,
    required int videos_number,
    required int events_number,
    required int activities_number,
    required YoutubeLink? featured_video,
    required int audio_number,
    required String first_name,
    required List<CounsellingGroups> counselling_groups,
    required String quotation,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) =>
      _$HomeFromJson(json);

}
