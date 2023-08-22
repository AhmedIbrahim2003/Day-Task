import 'package:flutter/cupertino.dart';

class AgreeToTermsAndCondition extends StatelessWidget {
  const AgreeToTermsAndCondition(
      {super.key, required this.agreeBoxIcon, required this.agreeFunction});

  final Widget agreeBoxIcon;
  final void Function() agreeFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: agreeFunction,
          child: Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(),
            child: agreeBoxIcon,
          ),
        ),
        const SizedBox(width: 10),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'I have read & agreed to DayTask ',
                style: TextStyle(
                  color: Color(0xFF8CAAB8),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.35,
                ),
              ),
              TextSpan(
                text: 'Privacy\nPolicy,Terms & Condition',
                style: TextStyle(
                  color: Color(0xFFFED36A),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.35,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
