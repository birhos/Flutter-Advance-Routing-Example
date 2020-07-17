import 'package:flutter/material.dart';

class NavigationService {
  static NavigationService _instance;

  NavigationService._init();

  static NavigationService get instance {
    if (_instance == null) {
      _instance = NavigationService._init();
    }

    return _instance;
  }

  // ************************** **************************

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey(debugLabel: "navigator");

  // ************************** **************************

  Future pop({Object result}) async {
    return navigatorKey.currentState.pop(result);
  }

  Future pushNamed(String path, {Object args}) async {
    return await navigatorKey.currentState.pushNamed(
      path,
      arguments: args,
    );
  }

  Future pushReplacementNamed(String path, {Object args}) async {
    return await navigatorKey.currentState.pushReplacementNamed(
      path,
      arguments: args,
    );
  }

  final removeAllOldRoutes = (Route<dynamic> route) => false;

  Future navigateToReset(String path, {Object args}) async {
    return await navigatorKey.currentState.pushNamedAndRemoveUntil(
      path,
      removeAllOldRoutes,
      arguments: args,
    );
  }
}
