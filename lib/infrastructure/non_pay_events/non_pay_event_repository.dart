import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/non_pay_event/i_non_pay_event_remote_datasource.dart';
import 'package:tech_in_church/domain/non_pay_event/i_non_pay_event_repository.dart';
import 'package:tech_in_church/domain/non_pay_event/non_pay_event.dart';
import 'package:tech_in_church/domain/non_pay_event/non_pay_event_failure.dart';

@LazySingleton(as: INonPayEventRepository)
class NonPayEventRepository extends INonPayEventRepository {
  final INonPayEventRemoteDataSource nonPayEventRemoteDataSource;
  final INetworkInfo networkInfo;
  NonPayEventRepository(
      {required this.nonPayEventRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<NonPayEventFailure, List<NonPayEvent>>>
      getNonPayEvents() async {
    late Either<NonPayEventFailure, List<NonPayEvent>> result =
        left(const NonPayEventFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await nonPayEventRemoteDataSource.getNonPayEvents();
        switch (response?.statusCode) {
          case 200:
            final podcastResponse = (response?.data?['data'] as List)
                .map((e) => NonPayEvent.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(podcastResponse);
            break;
        }
      } else {
        result = left(const NonPayEventFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const NonPayEventFailure.serverError());
    }
    return result;
  }

  @override
  Future<Either<NonPayEventFailure, Unit>> registerForNonPayEvents(
      int eventid) async {
    late Either<NonPayEventFailure, Unit> result =
        left(const NonPayEventFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response =
            await nonPayEventRemoteDataSource.registerForNonPayEvent(eventid);
        switch (response?.statusCode) {
          case 200:
            print(response?.data);
            result = right(unit);
            break;
        }
      } else {
        result = left(const NonPayEventFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const NonPayEventFailure.serverError());
    }
    return result;
  }
}
