import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/profile/domain/entities/review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/avatars/driver_avatar_secondary.dart';
import 'package:ionicons/ionicons.dart';

class ReviewItem extends StatelessWidget {
  final ReviewEntity review;

  const ReviewItem({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.neutral99,
        border: Border.all(
          color: ColorPalette.primary95,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const DriverAvatarSecondary(
                  imageUrl: null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        review.serviceName,
                        style: context.labelLarge,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (var i = 0; i < 5; i++)
                            Icon(
                              Ionicons.star,
                              color: i < review.rating ? ColorPalette.secondary70 : ColorPalette.neutralVariant50,
                              size: 16,
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 8,
              runSpacing: 8,
              children: review.goodPoints
                  .map(
                    (e) => Container(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                      decoration: BoxDecoration(
                        color: ColorPalette.neutralVariant99,
                        border: Border.all(color: ColorPalette.primary95),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Ionicons.checkmark,
                            color: ColorPalette.semanticgreen60,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            e,
                            style: context.bodySmall?.copyWith(
                              color: ColorPalette.neutralVariant50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
