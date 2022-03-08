part of 'newsletters_bloc.dart';

@freezed
class NewslettersEvent with _$NewslettersEvent {
  const factory NewslettersEvent.newslettersFetched() =
      NewslettersFetched;
}