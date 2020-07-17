import 'package:flutter/material.dart';

import 'package:example/others/constants.dart';
import 'package:example/navigation/routeManager.dart';
import 'package:example/navigation/navigationService.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double widthMultiplier = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Advance Routing',
          style: Theme.of(context).textTheme.display1.copyWith(
                color: Colors.white,
                fontSize: 5.0 * widthMultiplier,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Native Transition',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                /// Argument Olarak "Map" Gönderdiğim İçin Her Türlü Veri Tipi Gönderebilirim.
                final Map<String, dynamic> arguments = {
                  "fullscreenDialog": false,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance
                    .pushNamed(
                  Routes.anotherPageNativeTransition,
                  args: arguments,
                )
                    .then((data) {
                  debugPrint("$data");
                });
              },
            ),

            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Slide Transition - Right',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                final Map<String, dynamic> arguments = {
                  "transitionType": TransitionType.SLIDERIGHT,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance.pushNamed(
                  Routes.anotherPageTransition,
                  args: arguments,
                );
              },
            ),

            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Slide Transition - Left',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                final Map<String, dynamic> arguments = {
                  "transitionType": TransitionType.SLIDELEFT,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance.pushNamed(
                  Routes.anotherPageTransition,
                  args: arguments,
                );
              },
            ),

            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Slide Transition - Top',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                final Map<String, dynamic> arguments = {
                  "transitionType": TransitionType.SLIDETOP,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance.pushNamed(
                  Routes.anotherPageTransition,
                  args: arguments,
                );
              },
            ),

            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Slide Transition - Bottom',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                final Map<String, dynamic> arguments = {
                  "transitionType": TransitionType.SLIDEBOTTOM,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance.pushNamed(
                  Routes.anotherPageTransition,
                  args: arguments,
                );
              },
            ),

            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Fade Transition',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                final Map<String, dynamic> arguments = {
                  "transitionType": TransitionType.FADE,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance.pushNamed(
                  Routes.anotherPageTransition,
                  args: arguments,
                );
              },
            ),

            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Scale Transition',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                final Map<String, dynamic> arguments = {
                  "transitionType": TransitionType.SCALE,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance.pushNamed(
                  Routes.anotherPageTransition,
                  args: arguments,
                );
              },
            ),

            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Rotation Transition',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                final Map<String, dynamic> arguments = {
                  "transitionType": TransitionType.ROTATE,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance.pushNamed(
                  Routes.anotherPageTransition,
                  args: arguments,
                );
              },
            ),

            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Size Transition',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                final Map<String, dynamic> arguments = {
                  "transitionType": TransitionType.SIZE,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance.pushNamed(
                  Routes.anotherPageTransition,
                  args: arguments,
                );
              },
            ),

            // ************************** ************************** ************************** **************************

            RaisedButton(
              color: Colors.amber,
              child: Text(
                'Scale Rotate Transition',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.black,
                      fontSize: 3.5 * widthMultiplier,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onPressed: () {
                final Map<String, dynamic> arguments = {
                  "transitionType": TransitionType.SCALEROTATE,
                  "message": "Message Displays Here.",
                  "color": Colors.greenAccent,
                };

                NavigationService.instance.pushNamed(
                  Routes.anotherPageTransition,
                  args: arguments,
                );
              },
            ),

            // ************************** ************************** ************************** **************************
          ],
        ),
      ),
    );
  }
}
