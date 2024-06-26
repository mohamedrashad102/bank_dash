import 'package:bank_dash/core/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:bank_dash/core/utils/app_router.dart';
import 'package:bank_dash/core/utils/light_theme.dart';
import 'package:bank_dash/layers/mobile_layout/settings/cubits/settings_tab_bar_cubit.dart';
import 'package:bank_dash/layers/mobile_layout/transactions/cubits/expense_cubit.dart';
import 'package:bank_dash/core/cubits/drawer_cubit/recent_transactions/recent_transactions_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/scroll_behaviour.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
  );
  runApp(DevicePreview(
    enabled: !kReleaseMode && true,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DrawerCubit(),
        ),
        BlocProvider(
          create: (context) => SettingsTabBarCubit(),
        ),
        BlocProvider(
          create: (context) => ExpenseCubit(),
        ),
        BlocProvider(
          create: (context) => RecentTransactionsCubit(),
        ),
      ],
      child: MaterialApp.router(
        scrollBehavior: CustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: lightTheme,
      ),
    );
  }
}
