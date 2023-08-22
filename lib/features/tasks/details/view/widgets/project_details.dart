import 'package:flutter/cupertino.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Project Details',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.19,
          ),
        ),
        SizedBox(height: 9),
        SizedBox(
          width: 370,
          height: 96,
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\n',
            style: TextStyle(
              color: Color(0xFFBBCED7),
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.54,
            ),
          ),
        )
      ],
    );
  }
}
