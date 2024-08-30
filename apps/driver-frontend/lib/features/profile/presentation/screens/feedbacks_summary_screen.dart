import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/profile/presentation/blocs/feedbacks_summary.dart';
import 'package:driver_flutter/features/profile/presentation/components/feedbacks_summary_empty_state.dart';
import 'package:driver_flutter/features/profile/presentation/components/rating_gauge.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:ionicons/ionicons.dart';

import '../components/review_item.dart';

@RoutePage()
class FeedbacksSummaryScreen extends StatefulWidget {
  const FeedbacksSummaryScreen({super.key});

  @override
  State<FeedbacksSummaryScreen> createState() => _FeedbacksSummaryScreenState();
}

class _FeedbacksSummaryScreenState extends State<FeedbacksSummaryScreen> {
  @override
  void initState() {
    super.initState();
    locator<FeedbacksSummaryCubit>().load();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<FeedbacksSummaryCubit>(),
      child: Container(
        padding: context.responsive(
          const EdgeInsets.all(16).copyWith(bottom: 0),
          xl: const EdgeInsets.all(16).copyWith(top: 96),
        ),
        color: ColorPalette.neutralVariant99,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              AppTopBar(title: context.translate.feedbacksSummary),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: BlocBuilder<FeedbacksSummaryCubit, FeedbacksSummaryState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (initial) => const SizedBox(),
                      loading: (loading) =>
                          Assets.lottie.loading.lottie(width: double.infinity, height: double.infinity),
                      error: (value) => Text(value.errorMessage),
                      empty: (value) => const FeedbacksSummaryEmptyState(),
                      loaded: (loaded) {
                        return SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              RatingGauge(rating: (loaded.summary.averageRating ?? 0) / 20),
                              const SizedBox(
                                height: 16,
                              ),
                              if (loaded.summary.averageRating != null) ...[
                                Center(
                                  child: Text(
                                    ratingTitle(context, (loaded.summary.averageRating ?? 0) / 20),
                                    style: context.titleLarge,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Center(
                                  child: Text(
                                    ratingSubtitle(context, (loaded.summary.averageRating ?? 0) / 20),
                                    style: context.bodyMedium,
                                  ),
                                ),
                              ],
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                context.translate.feedbacksGoodPointsTitle,
                                style: context.titleSmall,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                alignment: WrapAlignment.start,
                                children: loaded.summary.goodPoints
                                    .map(
                                      (e) => FeedbackParameter(
                                        isGood: true,
                                        title: e,
                                      ),
                                    )
                                    .toList(),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                context.translate.feedbacksBadTitle,
                                style: context.titleSmall,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                alignment: WrapAlignment.start,
                                children: loaded.summary.badPoints
                                    .map(
                                      (e) => FeedbackParameter(
                                        isGood: false,
                                        title: e,
                                      ),
                                    )
                                    .toList(),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                context.translate.feedbacksReviewsTitle,
                                style: context.titleSmall,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              ...loaded.summary.goodReviews.map((e) => Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: ReviewItem(review: e),
                                  )),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String ratingTitle(BuildContext context, double rating) {
    if (rating > 3) {
      return context.translate.feedbacksGoodTitle;
    } else {
      return context.translate.feedbacksBadTitle;
    }
  }

  String ratingSubtitle(BuildContext context, double rating) {
    if (rating > 3) {
      return context.translate.feedbacksGoodSubtitle;
    } else {
      return context.translate.feedbacksBadSubtitle;
    }
  }
}

class FeedbackParameter extends StatelessWidget {
  final String title;
  final bool isGood;

  const FeedbackParameter({
    super.key,
    required this.title,
    required this.isGood,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 32,
          color: iconColor,
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: iconColor),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            title,
            style: context.labelMedium?.copyWith(color: textColor),
          ),
        )
      ],
    );
  }

  IconData get icon => isGood ? Ionicons.heart_circle : Ionicons.heart_dislike_circle;

  Color get iconColor => isGood ? ColorPalette.semanticgreen70 : ColorPalette.error50;

  Color get textColor => isGood ? ColorPalette.semanticgreen30 : ColorPalette.error30;

  Color get backgroundColor => isGood ? ColorPalette.semanticgreen99 : ColorPalette.error95;
}
