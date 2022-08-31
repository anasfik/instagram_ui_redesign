import 'package:flutter/material.dart';

class StatusBarSizedBox extends StatelessWidget {
  const StatusBarSizedBox({
    super.key,
    required this.additionalHeight,
  });

  final int additionalHeight;
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label:
          "box for taking the status bar height, so the Widgets don't be show under the status bar, with additional",
      child: Container(
        height: MediaQuery.of(context).viewPadding.top + additionalHeight,
      ),
    );
  }
}
