import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AccessDeniedForm extends StatelessWidget {
  const AccessDeniedForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Assets.images.rideHistoryEmptyState.image(width: 300, height: 300),
        const SizedBox(height: 12),
        Text(
          "Access denied!",
          style: context.titleMedium,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
