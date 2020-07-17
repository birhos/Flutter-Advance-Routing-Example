import 'package:flutter/material.dart';

import 'package:example/navigation/navigationService.dart';

class AnotherPage extends StatelessWidget {
  final String message;
  final Color color;

  AnotherPage({
    Key key,
    @required this.message,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthMultiplier = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text(
          'Another Page',
          style: Theme.of(context).textTheme.display1.copyWith(
                color: Colors.white,
                fontSize: 5.0 * widthMultiplier,
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            NavigationService.instance.pop(result: true);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
