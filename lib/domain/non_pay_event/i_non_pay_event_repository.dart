import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/non_pay_event/non_pay_event.dart';
import 'package:tech_in_church/domain/non_pay_event/non_pay_event_failure.dart';

abstract class INonPayEventRepository {
  Future<Either<NonPayEventFailure, List<NonPayEvent>>> getNonPayEvents();
  Future<Either<NonPayEventFailure, Unit>> registerForNonPayEvents(int eventid);
}