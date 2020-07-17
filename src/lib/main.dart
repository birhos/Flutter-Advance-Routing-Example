import 'package:flutter/material.dart';

import 'package:example/others/constants.dart';
import 'package:example/navigation/routeManager.dart';
import 'package:example/navigation/navigationService.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Advance Routing Example',

      //
      initialRoute: Routes.initialRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
