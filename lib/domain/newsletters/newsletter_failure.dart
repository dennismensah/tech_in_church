import 'package:freezed_annotation/freezed_annotation.dart';

part 'newsletter_failure.freezed.dart';

@freezed
 class NewsletterFailure with _$NewsletterFailure {
   const factory NewsletterFailure.initial() = Initial;
  const factory NewsletterFailure.serverError() = ServerError;
  const factory NewsletterFailure.noNetwork() = NoNetwork;
}