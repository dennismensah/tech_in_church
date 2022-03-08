import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/church_today/church_today.dart';
import 'package:tech_in_church/domain/church_today/church_today_failure.dart';

abstract class IChurchTodayRepository {
  Future<Either<ChurchTodayFailure, List<ChurchToday>>> getChurchTodayRecords();
}