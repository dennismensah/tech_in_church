import 'package:dio/dio.dart';

abstract class IOfferingRemoteDataSource {
  Future<Response?> makeOffering(String amount);
  Future<Response?> updateServer(String amount,String paidAt);
}
