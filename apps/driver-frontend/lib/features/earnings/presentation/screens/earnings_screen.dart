import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/features/earnings/presentation/components/empty_state.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:fl_chart/fl_chart.dart';

import '../blocs/earnings.dart';
import '../components/earnings_header.dart';

@RoutePage()
class EarningsScreen extends StatefulWidget {
  const EarningsScreen({super.key});

  @override
  State<EarningsScreen> createState() => _EarningsScreenState();
}

class _EarningsScreenState extends State<EarningsScreen> {
  @override
  void initState() {
    locator<EarningsBloc>().load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<EarningsBloc>(),
      child: Container(
        color: context.theme.scaffoldBackgroundColor,
        padding: context.responsive(
          null,
          xl: const EdgeInsets.only(
            top: 104,
            left: 24,
            right: 24,
            bottom: 24,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            context.responsive(
              const SizedBox(),
              xl: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(
                  context.translate.earnings,
                  style: context.headlineSmall,
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<EarningsBloc, EarningsState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      EarningsHeader(
                        dataset: state.pageState.mapOrNull(
                          loaded: (value) => value.dataset,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Expanded(
                        child: AnimatedSwitcher(
                          duration: AnimationDuration.pageStateTransitionMobile,
                          child: state.pageState.map(
                            empty: (value) => const EarningsEmptyState(),
                            initial: (_) => const SizedBox(),
                            error: (error) => Text(error.errorMessage),
                            loading: (value) => Assets.lottie.loading.lottie(),
                            loaded: (loaded) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Center(
                                      child: Container(
                                        height: 300,
                                        constraints: const BoxConstraints(maxWidth: 500),
                                        child: BarChart(
                                          loaded.dataset.barChartData,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
