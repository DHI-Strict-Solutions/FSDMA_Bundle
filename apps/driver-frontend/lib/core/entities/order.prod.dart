import 'package:collection/collection.dart';
import 'package:driver_flutter/core/entities/chat_message.prod.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/entities/place.prod.dart';
import 'package:driver_flutter/core/entities/ride_option.prod.dart';
import 'package:driver_flutter/core/enums/order_status.prod.dart';
import 'package:driver_flutter/core/enums/payment_mode.prod.dart';
import 'package:driver_flutter/core/graphql/fragments/current_order.fragment.graphql.dart';
import 'package:driver_flutter/core/graphql/schema.gql.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';

extension OrderGqlX on Fragment$CurrentOrder {
  OrderEntity get toEntity => OrderEntity(
        id: id,
        createdAt: createdOn,
        status: status.toEntity,
        expextedAt: expectedTimestamp,
        startAt: startTimestamp,
        destinationArrivedTo: destinationArrivedTo,
        finishAt: finishTimestamp,
        etaPickupAt: etaPickup,
        costBest: costBest,
        costAfterCoupon: costAfterCoupon,
        providerShare: providerShare,
        currency: currency,
        cashPaymentAllowed: service?.paymentMethod != Enum$ServicePaymentMethod.OnlyCredit,
        waypoints: points
            .mapIndexed(
              (index, element) => PlaceEntity(
                address: addresses[index],
                coordinates: element.toLatLngEntity,
              ),
            )
            .toList(),
        waitMinutes: waitMinutes.toInt(),
        waitCost: waitCost,
        rideOptionsCost: rideOptionsCost,
        taxCost: taxCost,
        serviceCost: costBest,
        paymentMode: paymentMode?.toEntity ?? PaymentMode.cash,
        durationBest: durationBest,
        distanceBest: distanceBest,
        rideDirections: directions?.toLatLngList ?? [],
        driverDirections: driverDirections?.toLatLngList ?? [],
        rideOptions: options.map((e) => e.toEntity).toList(),
        riderFirstName: rider?.firstName,
        riderLastName: rider?.lastName,
        riderPhoneNumber: rider!.mobileNumber,
        serviceName: service?.name ?? '-',
        riderPhotoUrl: rider?.media?.address,
        riderPresetPhotoId: rider?.presetAvatarNumber,
        chatMessages: conversations.map((e) => e.toEntity).toList(),
        lastSeenMessagesAt: driverLastSeenMessagesAt,
      );
}
