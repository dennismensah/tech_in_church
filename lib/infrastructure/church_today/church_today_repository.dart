import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/church_today/church_today.dart';
import 'package:tech_in_church/domain/church_today/church_today_failure.dart';
import 'package:tech_in_church/domain/church_today/i_church_today_remote_datasource.dart';
import 'package:tech_in_church/domain/church_today/i_church_today_repository.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IChurchTodayRepository)
class ChurchTodayRepository extends IChurchTodayRepository {
  final IChurchTodayRemoteDataSource churchTodayRemoteDataSource;
  final INetworkInfo networkInfo;
  ChurchTodayRepository(
      {required this.churchTodayRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<ChurchTodayFailure, List<ChurchToday>>> getChurchTodayRecords() async {
    late Either<ChurchTodayFailure, List<ChurchToday>> result =
        left(const ChurchTodayFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await churchTodayRemoteDataSource.getChurchTodayRecords();
        switch (response?.statusCode) {
          case 200:
            final churchTodayResponse = (response?.data?['data'] as List)
                .map((e) => ChurchToday.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(churchTodayResponse);
            break;
        }
      } else {
        result = left(const ChurchTodayFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const ChurchTodayFailure.serverError());
    }
    return result;
  }
}
