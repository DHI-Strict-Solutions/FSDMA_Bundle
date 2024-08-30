import 'package:dartz/dartz.dart';
import 'package:driver_flutter/config/env.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/features/chat/chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/core/entities/ride_option.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@Freezed(fromJson: true)
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    required String id,
    required OrderStatus status,
    required DateTime createdAt,
    required DateTime expextedAt,
    required DateTime? startAt,
    required DateTime? finishAt,
    required DateTime? etaPickupAt,
    required DateTime lastSeenMessagesAt,
    required int? destinationArrivedTo,
    required double providerShare,
    required String currency,
    required List<PlaceEntity> waypoints,
    required int waitMinutes,
    required double waitCost,
    required double rideOptionsCost,
    required double taxCost,
    required double serviceCost,
    required double costBest,
    required double costAfterCoupon,
    required PaymentMode paymentMode,
    required int durationBest,
    required int distanceBest,
    required List<LatLngEntity> rideDirections,
    required List<LatLngEntity> driverDirections,
    required List<RideOptionEntity> rideOptions,
    required String? riderFirstName,
    required String? riderLastName,
    required String riderPhoneNumber,
    required String? riderPhotoUrl,
    required int? riderPresetPhotoId,
    required String serviceName,
    required bool cashPaymentAllowed,
    required List<ChatMessageEntity> chatMessages,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) => _$OrderEntityFromJson(json);

  static OrderEntity get testOrder => OrderEntity(
        id: '1',
        createdAt: DateTime.now(),
        expextedAt: DateTime.now(),
        status: OrderStatus.driverAccepted,
        lastSeenMessagesAt: DateTime.now(),
        destinationArrivedTo: null,
        startAt: null,
        finishAt: null,
        etaPickupAt: DateTime.now().add(const Duration(minutes: 5)),
        costBest: 10,
        costAfterCoupon: 8,
        providerShare: 2,
        currency: 'USD',
        cashPaymentAllowed: true,
        chatMessages: [
          ChatMessageEntity(
            id: '1',
            message: 'I am close, took a wrong turn, expect a few minutes delay',
            createdAt: DateTime.now().subtract(const Duration(minutes: 2)),
            isSender: true,
          ),
          ChatMessageEntity(
            id: '2',
            message: 'Ok, no problem',
            createdAt: DateTime.now(),
            isSender: false,
          ),
        ],
        waypoints: const [
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.3875, lng: -122.0575),
            address: "16th Ave PentHouse, Mountain View, CA 94041",
          ),
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.4220, lng: -122.0841),
            address: "Mountain View, CA 94043",
          ),
        ],
        waitMinutes: 5,
        waitCost: 2,
        rideOptionsCost: 3,
        taxCost: 1,
        serviceCost: 4,
        paymentMode: PaymentMode.cash,
        durationBest: 400,
        distanceBest: 500,
        rideDirections: const [
          LatLngEntity(lat: 37.3875, lng: -122.0575),
          LatLngEntity(lat: 37.388033, lng: -122.057918),
          LatLngEntity(lat: 37.386627, lng: -122.068655),
          LatLngEntity(lat: 37.394856, lng: -122.068583),
          LatLngEntity(lat: 37.400799, lng: -122.069950),
          LatLngEntity(lat: 37.409426, lng: -122.070957),
          LatLngEntity(lat: 37.416224, lng: -122.085845),
          LatLngEntity(lat: 37.422394, lng: -122.091887),
          LatLngEntity(lat: 37.42203, lng: -122.08417),
          LatLngEntity(lat: 37.4220, lng: -122.0841)
        ],
        driverDirections: const [
          LatLngEntity(lat: 37.384135, lng: -122.067976),
          LatLngEntity(lat: 37.385207, lng: -122.066095),
          LatLngEntity(lat: 37.385207, lng: -122.066095),
          LatLngEntity(lat: 37.385808, lng: -122.063315),
          LatLngEntity(lat: 37.386246, lng: -122.059677),
          LatLngEntity(lat: 37.3875, lng: -122.0575),
        ],
        rideOptions: [],
        riderFirstName: 'John',
        riderLastName: 'Doe',
        riderPhoneNumber: '6505551234',
        serviceName: 'Economy',
        riderPhotoUrl: null,
        riderPresetPhotoId: 1,
      );

  const OrderEntity._();

  Option<Either<String, String>> get avatar => riderPhotoUrl != null
      ? Some(Right(Env.serverUrl + riderPhotoUrl!))
      : riderPresetPhotoId != null
          ? Some(Left('assets/avatars/a$riderPresetPhotoId.png'))
          : const None();

  String get riderFullName => '$riderFirstName $riderLastName';

  double get total => switch (paymentMode) { PaymentMode.cash => costAfterCoupon, _ => (costBest - providerShare) };

  DateTime? get expectedDesintationArrival => startAt?.add(
        Duration(
          seconds: durationBest,
        ),
      );

  String? expectedArrival(BuildContext context) => expectedDesintationArrival?.minutesFromNow(context);
}
