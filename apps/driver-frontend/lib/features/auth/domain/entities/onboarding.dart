import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/gen/assets.gen.dart';

part 'onboarding.freezed.dart';

@freezed
class OnBoardingItem with _$OnBoardingItem {
  const factory OnBoardingItem({
    required AssetGenImage image,
    required String title,
    required String description,
  }) = _OnBoardItem;
}

List<OnBoardingItem> onboardingItems(BuildContext context) => [
      OnBoardingItem(
        image: Assets.images.onboarding1,
        title: context.translate.welcomeTitle,
        description: context.translate.welcomeSubtitle,
      ),
      OnBoardingItem(
        image: Assets.images.onboarding2,
        title: context.translate.onboardingRewardTitle,
        description: context.translate.onboardingRewardSubtitle,
      ),
      OnBoardingItem(
        image: Assets.images.language,
        title: context.translate.selectLanguage,
        description: '',
      ),
    ];
