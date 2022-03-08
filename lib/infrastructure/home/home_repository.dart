import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/home/home.dart';
import 'package:tech_in_church/domain/home/home_failure.dart';
import 'package:tech_in_church/domain/home/home_remote_datasource.dart';
import 'package:tech_in_church/domain/home/i_home_repository.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository extends IHomeRepository {
  final IHomeRemoteDataSource homeRemoteDataSource;
  final INetworkInfo networkInfo;
  HomeRepository(
      {required this.homeRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<HomeFailure, Home>> getHomeRecords() async {
    late Either<HomeFailure, Home> result =
        left(const HomeFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await homeRemoteDataSource.getHomeRecords();
        switch (response?.statusCode) {
          case 200:
            final newsletterResponse = Home.fromJson(response?.data?['data'] as Map<String,dynamic>);
            result = right(newsletterResponse);
            break;
        }
      } else {
        result = left(const HomeFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const HomeFailure.serverError());
    }
    return result;
  }
}
