import 'package:driver_flutter/features/home/presentation/blocs/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/avatars/app_avatar.dart';
import 'package:flutter_common/core/presentation/buttons/app_close_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateRiderSheet extends StatefulWidget {
  final OrderEntity order;

  const RateRiderSheet({
    super.key,
    required this.order,
  });

  @override
  State<RateRiderSheet> createState() => _RateYourRideSheetState();
}

class _RateYourRideSheetState extends State<RateRiderSheet> {
  int? rating;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.neutralVariant99,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.drawerTopBackground.provider(),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: AppCloseButton(
                    onPressed: () => locator<HomeBloc>().add(
                      HomeEvent.reviewSubmitted(orderId: widget.order.id, rating: null, review: null),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -33),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppAvatar(
                  avatar: widget.order.avatar,
                  defaultAvatarPath: Assets.avatars.a1.path,
                ),
                const SizedBox(height: 8),
                Text(widget.order.riderFullName, style: context.titleMedium),
                const SizedBox(height: 4),
                Text(
                  widget.order.serviceName,
                  style: context.bodyMedium?.copyWith(
                    color: ColorPalette.neutralVariant50,
                  ),
                ),
              ],
            ),
          ),
          Text(
            context.translate.howWasYourTrip,
            textAlign: TextAlign.center,
            style: context.titleLarge,
          ),
          const SizedBox(height: 16),
          Center(
            child: RatingBar.builder(
              itemSize: 46,
              unratedColor: ColorPalette.neutral90,
              glow: false,
              allowHalfRating: true,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: rating == null ? 46 : 32,
                  height: rating == null ? 46 : 32,
                  decoration: const ShapeDecoration(
                    shape: StarBorder(
                      innerRadiusRatio: 0.45,
                      pointRounding: 0.2,
                    ),
                    color: ColorPalette.secondary70,
                  ),
                );
              },
              itemCount: 5,
              initialRating: rating?.toDouble() ?? 0,
              onRatingUpdate: (value) {
                setState(() {
                  rating = value.toInt();
                });
              },
            ),
          ),
          const Spacer(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: AppPrimaryButton(
                isDisabled: rating == null,
                onPressed: () {
                  if (rating != null) {
                    locator<HomeBloc>().add(
                      HomeEvent.reviewSubmitted(orderId: widget.order.id, rating: rating, review: null),
                    );
                  }
                },
                child: Text(context.translate.submitFeedback),
              ),
            ),
          )
        ],
      ),
    );
  }
}
