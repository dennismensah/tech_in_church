part of 'offering_bloc.dart';

@freezed
class OfferingEvent with _$OfferingEvent {
  const factory OfferingEvent.nameChanged(String nameStr) = NameChanged;
  const factory OfferingEvent.cardNumberChanged(String cardNumberStr) = CardNumberChanged;
  const factory OfferingEvent.expirationDateChanged(String expirationDateStr) =
      ExpirationDateChanged;
  const factory OfferingEvent.cvcChanged(String cvcStr) = CvcChanged;
  const factory OfferingEvent.amountChanged(String amountStr) =
      AmountChanged;
  const factory OfferingEvent.madeOffering() =
      MadeOffering;
  const factory OfferingEvent.updatedServer() =
      UpdatedServer;
}