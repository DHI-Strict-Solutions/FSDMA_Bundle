part of 'home.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onStarted({
    required DriverLocation? location,
  }) = _OnStarted;

  const factory HomeEvent.onStatusChanged({
    required DriverStatus status,
  }) = _OnStatusChanged;

  const factory HomeEvent.onOrderRequestPageChanged({
    required OrderRequestEntity request,
  }) = _OnOrderRequestPageChanged;

  const factory HomeEvent.onLocationUpdated({
    required DriverLocation location,
    DateTime? lastLocationUpdate,
  }) = _OnLocationUpdated;

  const factory HomeEvent.onAcceptOrder({
    required OrderRequestEntity request,
  }) = _OnAcceptOrder;

  const factory HomeEvent.onCancelOrder({
    required String orderId,
    required String? reasonId,
    required String? reasonNote,
  }) = _OnCancelOrder;

  const factory HomeEvent.onArrivedToPickupPoint({
    required String orderId,
  }) = _OnArrivedToPickupPoint;

  const factory HomeEvent.onStripStarted({
    required String orderId,
  }) = _OnTripStarted;

  const factory HomeEvent.onArrivedToDestination({
    required OrderEntity order,
    required int destinationArrivedTo,
  }) = _OnArrivedToDestination;

  const factory HomeEvent.paidInCash({
    required String orderId,
    required double amount,
  }) = _PaidInCash;

  const factory HomeEvent.onSummaryConfirmed({
    required String orderId,
  }) = _OnSummaryConfirmed;

  const factory HomeEvent.reviewSubmitted({
    required String orderId,
    required int? rating,
    required String? review,
  }) = _ReviewSubmitted;

  // const factory HomeEvent.onRadiusChanged({
  //   required int radius,
  // }) = _OnRadiusChanged;

  const factory HomeEvent.messageSent({
    required ChatMessageEntity message,
  }) = _MessageSent;

  const factory HomeEvent.onShowChat() = _OnShowChat;

  const factory HomeEvent.onHideChat() = _OnHideChat;
}
