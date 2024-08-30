import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/wallet/presentation/components/wallet_transaction_item.dart';
import 'package:driver_flutter/gen/assets.gen.dart';

import '../blocs/wallet.dart';

class WalletActivities extends StatelessWidget {
  const WalletActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<WalletBloc, WalletState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: AnimatedSwitcher(
              duration: AnimationDuration.pageStateTransitionMobile,
              child: state.map(
                  initial: (_) => const SizedBox(),
                  loading: (_) => Assets.lottie.loading.lottie(height: 300, width: double.infinity),
                  loaded: (loaded) {
                    if (loaded.data.transactions.isEmpty) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "No activities yet",
                            style: context.bodyMedium,
                          ),
                        ],
                      );
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          context.translate.activities,
                          style: context.titleMedium,
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: loaded.data.transactions
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.only(bottom: 16),
                                        child: WalletTransactionItem(
                                          transaction: e,
                                        ),
                                      ))
                                  .toList(),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  error: (error) {
                    return Text(error.message);
                  }),
            ),
          );
        },
      ),
    );
  }
}
