import 'package:freezed_annotation/freezed_annotation.dart';

part 'newsletter.freezed.dart';
part 'newsletter.g.dart';

@freezed
class Newsletter with _$Newsletter {
  const factory Newsletter({
    required int id,
    required String title,
    required String message,
    required String creator,
    required String mask,
    required String created_at,
  }) = _Newsletter;

  factory Newsletter.fromJson(Map<String, dynamic> json) =>
      _$NewsletterFromJson(json);
}