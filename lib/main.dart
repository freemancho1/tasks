import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/view/task_box.dart';
import 'sys/config/constants.dart';
import 'sys/config/localizations.dart';
import 'sys/config/router.dart';
import 'sys/config/theme.dart';
import 'sys/sys_init.dart';
import 'sys/utils/snack_bar.dart';

void main() async {
  await sysInit();
  runApp(const AppMain());
}

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TaskBoxViewModel()),
      ],
      child: MaterialApp.router(
        title: ConstCfg.appNameEn,
        theme: ThemeCfg.appTheme,
        routerConfig: routerCfg,
        scaffoldMessengerKey: scaffoldMessengerKey,
        localizationsDelegates: localizationsDelegates,
        supportedLocales: supportedLocales,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
