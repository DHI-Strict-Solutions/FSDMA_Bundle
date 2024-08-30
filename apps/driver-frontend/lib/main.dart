import 'package:driver_flutter/config/env.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/theme/theme.dart';
import 'package:driver_flutter/config/theme/fonts.dart';
import 'package:driver_flutter/core/blocs/settings.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'core/router/app_router.dart';
import 'core/router/router_observer.dart';
import 'package:driver_flutter/l10n/messages.dart';
import 'package:flutter_common/l10n/messages.dart' as common_messages;

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getTemporaryDirectory(),
  );
  // await HydratedBloc.storage.clear();
  WakelockPlus.enable();
  configureDependencies();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    if (shortestSide < 600) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
    return BlocProvider.value(
      value: locator<SettingsCubit>(),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: Env.appName,
            themeMode: ThemeMode.light,
            theme: AppTheme.light(
              Fonts.primary,
              Fonts.secondary,
            ),
            darkTheme: AppTheme.dark(
              Fonts.primary,
              Fonts.secondary,
            ),
            locale: Locale(state.locale),
            localizationsDelegates: const [
              ...S.localizationsDelegates,
              common_messages.S.delegate,
            ],
            supportedLocales: S.supportedLocales,
            routerConfig: locator<AppRouter>().config(
              navigatorObservers: () => [
                RouterObserver(),
              ],
            ),
          );
        },
      ),
    );
  }
}
