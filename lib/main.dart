
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_rise/providers/router_provider.dart';
import 'package:money_rise/theme/app_theme.dart';

void main()  {

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    var router = ref.watch(routerProvider);
    return MaterialApp.router(
        // home: AccountPage(),
        title: 'Money Rise',
        theme: AppTheme.theme,
        routerConfig: router,
      );
  }
}
