import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/newsletters/i_newsletter_remote_datasource.dart';
import 'package:tech_in_church/domain/newsletters/i_newsletter_repository.dart';
import 'package:tech_in_church/domain/newsletters/newsletter.dart';
import 'package:tech_in_church/domain/newsletters/newsletter_failure.dart';

@LazySingleton(as: INewsletterRepository)
class NewsletterRepository extends INewsletterRepository {
  final INewsletterRemoteDataSource newsletterRemoteDataSource;
  final INetworkInfo networkInfo;
  NewsletterRepository(
      {required this.newsletterRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<NewsletterFailure, List<Newsletter>>> getNewsletters() async {
    late Either<NewsletterFailure, List<Newsletter>> result =
        left(const NewsletterFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await newsletterRemoteDataSource.getNewsletters();
        
        switch (response?.statusCode) {
          case 200:
            final newsletterResponse = (response?.data?['data'] as List)
                .map((e) => Newsletter.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(newsletterResponse);
            break;
        }
      } else {
        result = left(const NewsletterFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const NewsletterFailure.serverError());
    }
    return result;
  }
}
