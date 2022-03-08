import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/offering/offering_failure.dart';

abstract class IOfferingRepository {
  Future<Either<OfferingFailure, String>> makeOffering(String amount);
  Future<Either<OfferingFailure, Unit>> updateServer(String amount,String paidAt);
}