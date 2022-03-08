import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/home/home.dart';
import 'package:tech_in_church/domain/home/home_failure.dart';

abstract class IHomeRepository {
  Future<Either<HomeFailure, Home>> getHomeRecords();
}