import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              "An error occurred.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.display1.copyWith(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
