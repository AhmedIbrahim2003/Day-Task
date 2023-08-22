import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../home/presentaion/view/widget/avatar_row.dart';

class TaskInfo extends StatelessWidget {
  const TaskInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 47,
              height: 47,
              color: CustomColors.primaryColor,
              child: Center(
                child: SvgPicture.asset(Assets.images.tasks.calendaricon2),
              ),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Due Date',
                  style: TextStyle(
                    color: CustomColors.subTitleColor,
                    fontSize: 11,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.95,
                  ),
                ),
                const Text(
                  '20 June',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.26,
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: 47,
              height: 47,
              color: CustomColors.primaryColor,
              child: Center(
                child: SvgPicture.asset(Assets.images.tasks.profileicon),
              ),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project Team',
                  style: TextStyle(
                    color: CustomColors.subTitleColor,
                    fontSize: 11,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.95,
                  ),
                ),
                const SizedBox(height: 2),
                const AvatarsRow()
              ],
            )
          ],
        )
      ],
    );
  }
}
