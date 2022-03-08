import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_chapter.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_chapter_failure.dart';
import 'package:tech_in_church/domain/bible_chapter/i_bible_chapter_local_datasource.dart';
import 'package:tech_in_church/domain/bible_chapter/i_bible_chapter_remote_datasource.dart';
import 'package:tech_in_church/domain/bible_chapter/i_bible_chapter_repository.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBibleChapterRepository)
class BibleChapterRepository extends IBibleChapterRepository {
  final IBibleChapterRemoteDataSource bibleChapterRemoteDataSource;
  final IBibleChapterLocalDatasource bibleChapterLocalDataSource;
  final INetworkInfo networkInfo;
  BibleChapterRepository(
      {required this.bibleChapterRemoteDataSource,
      required this.bibleChapterLocalDataSource,
      required this.networkInfo});

  @override
  Future<Either<BibleChapterFailure, BibleChapter>> getBibleChapter(
      String searchStr) async {
    late Either<BibleChapterFailure, BibleChapter> result =
        left(const BibleChapterFailure.initial());

    try {
      final cacheResponse =
          await bibleChapterLocalDataSource.getBibleChapter(searchStr);

      if (await networkInfo.isConnected) {
        if (cacheResponse.isSome()) {
          result = right(cacheResponse.getOrElse(() => null));
        } else {
          final response =
              await bibleChapterRemoteDataSource.getBibleChapter(searchStr);
          switch (response?.statusCode) {
            case 200:
              final announcementResponse =
                  BibleChapter.fromJson(response?.data as Map<String,dynamic>);
              // (response?.data?['verses'] as List)
              //     .map((e) => BibleChapter.fromJson(e as Map<String, dynamic>))
              //     .toList();
              result = right(announcementResponse);
              break;
          }
        }
      } else {
        result = left(const BibleChapterFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const BibleChapterFailure.serverError());
    }
    return result;
  }
}
