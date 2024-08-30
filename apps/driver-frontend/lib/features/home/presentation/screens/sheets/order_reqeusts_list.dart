import 'package:driver_flutter/core/entities/order_request.dart';
import 'package:flutter/material.dart';

import '../../components/order_request_item.dart';

class OrderRequestsList extends StatelessWidget {
  final List<OrderRequestEntity> requests;

  const OrderRequestsList({
    super.key,
    required this.requests,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
        child: ListView.builder(
          itemCount: requests.length,
          itemBuilder: (context, index) {
            return OrderRequestItem(request: requests[index]);
          },
        ),
      ),
    );
  }
}
