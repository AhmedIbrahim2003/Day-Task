import 'package:flutter/material.dart';

void myPushReplacmentNavigator(
    {required BuildContext context, required Widget destination}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => destination,
    ),
  );
}

void myPushNavigator(
    {required BuildContext context, required Widget destination}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => destination,
    ),
  );
}

void myPopNavigator({required BuildContext context}) {
  Navigator.pop(
    context,
  );
}
