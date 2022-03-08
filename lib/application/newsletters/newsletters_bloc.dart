import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/newsletters/i_newsletter_repository.dart';
import 'package:tech_in_church/domain/newsletters/newsletter.dart';
import 'package:tech_in_church/domain/newsletters/newsletter_failure.dart';

part 'newsletters_event.dart';
part 'newsletters_state.dart';
part 'newsletters_bloc.freezed.dart';

@Injectable()
class NewslettersBloc extends Bloc<NewslettersEvent, NewslettersState> {
  final INewsletterRepository _newsletterRepository;
  NewslettersBloc(this._newsletterRepository)
      : super(const NewslettersState.initial());

  @override
  Stream<NewslettersState> mapEventToState(
    NewslettersEvent event,
  ) async* {
    yield* event.map(newslettersFetched: (e) async* {
      yield const NewslettersState.loading();
      final galleriesOption = await _newsletterRepository.getNewsletters();
      yield galleriesOption.fold(
        (l) =>  NewslettersState.loadedUnSuccessfully(l),
        (r) => NewslettersState.loadedSuccessfully(r),
      );
    });
  }
}
