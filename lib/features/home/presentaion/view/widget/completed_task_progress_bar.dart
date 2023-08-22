import 'package:flutter/cupertino.dart';

class CompletedTaskProgressBar extends StatelessWidget {
  const CompletedTaskProgressBar({super.key, this.fontColor});

  final fontColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Completed',
              style: TextStyle(
                color: fontColor,
                fontSize: 11,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
            Text(
              '100%',
              style: TextStyle(
                color: fontColor,
                fontSize: 9,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 1.83,
              ),
            )
          ],
        ),
        const SizedBox(height: 3),
        Container(
          width: 163,
          height: 6,
          decoration: ShapeDecoration(
            color: fontColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        )
      ],
    );
  }
}
