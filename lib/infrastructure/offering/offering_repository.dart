import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/offering/i_offering_remote_datasource.dart';
import 'package:tech_in_church/domain/offering/i_offering_repository.dart';
import 'package:tech_in_church/domain/offering/offering.dart';
import 'package:tech_in_church/domain/offering/offering_failure.dart';

@LazySingleton(as: IOfferingRepository)
class OfferingRepository extends IOfferingRepository {
  final IOfferingRemoteDataSource offeringRemoteDataSource;
  final INetworkInfo networkInfo;
  OfferingRepository(
      {required this.offeringRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<OfferingFailure, String>> makeOffering(String amount) async {
    late Either<OfferingFailure, String> result =
        left(const OfferingFailure.initial());
    try {
      if (await networkInfo.isConnected) {
        final response = await offeringRemoteDataSource.makeOffering(amount);

        switch (response?.statusCode) {
          case 200:
            print(response?.data);
            result = right(response?.data['data']);
            break;
        }
      } else {
        result = left(const OfferingFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const OfferingFailure.serverError());
    }
    return result;
  }

  @override
  Future<Either<OfferingFailure, Unit>> updateServer(
      String amount, String paidAt) async {
    late Either<OfferingFailure, Unit> result =
        left(const OfferingFailure.initial());
    try {
      if (await networkInfo.isConnected) {
        final response =
            await offeringRemoteDataSource.updateServer(amount, paidAt);

        switch (response?.statusCode) {
          case 200:
            print(response?.data);
            result = right(response?.data['data']);
            break;
        }
      } else {
        result = left(const OfferingFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const OfferingFailure.serverError());
    }
    return result;
  }
}
