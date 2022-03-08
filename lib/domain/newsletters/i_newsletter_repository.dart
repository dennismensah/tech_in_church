import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/newsletters/newsletter.dart';
import 'package:tech_in_church/domain/newsletters/newsletter_failure.dart';

abstract class INewsletterRepository {
  Future<Either<NewsletterFailure, List<Newsletter>>> getNewsletters();
}