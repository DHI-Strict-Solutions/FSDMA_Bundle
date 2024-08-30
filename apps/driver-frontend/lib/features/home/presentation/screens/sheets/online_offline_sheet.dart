import 'package:driver_flutter/core/blocs/auth_bloc.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/home/presentation/blocs/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:ionicons/ionicons.dart';

import '../../components/notice_bar_content.dart';

class OnlineOfflineSheet extends StatelessWidget {
  final HomeState state;

  const OnlineOfflineSheet({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.primary20,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: AnimationDuration.pageStateTransitionMobile,
            child: state.driverStatus.maybeMap(
              orElse: () => const SizedBox(),
              online: (online) => NoticeBarContent(
                icon: Ionicons.search,
                text: context.translate.driverOnlineTitle,
              ),
              offline: (offline) => NoticeBarContent(
                icon: Ionicons.car,
                text: context.translate.driverOfflineTitle,
              ),
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                color: ColorPalette.neutralVariant99,
              ),
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorPalette.neutral90),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Ionicons.wallet,
                          color: ColorPalette.primary30,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Text(
                          context.translate.yourBalance,
                          style: context.labelLarge,
                        ),
                      ),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return state.map(
                            authenticated: (value) => Text(
                              (value.profile.mainWallet?.balance ?? 0)
                                  .formatCurrency(value.profile.mainWallet?.currency ?? "USD"),
                              style: context.labelLarge,
                            ),
                            unauthenticated: (value) => const SizedBox(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
