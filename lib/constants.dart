import 'package:flutter/cupertino.dart';

void myPushReplacmentNavigator(
    {required BuildContext context, required Widget destination}) {
  Navigator.pushReplacement(
    context,
    CupertinoPageRoute(
      builder: (context) => destination,
    ),
  );
}

void myPushNavigator(
    {required BuildContext context, required Widget destination}) {
  Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (context) => destination,
    ),
  );
}

void myPopNavigator({required BuildContext context}) {
  Navigator.pop(
    context,
  );
}
