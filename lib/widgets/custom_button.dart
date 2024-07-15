import 'package:flutter/material.dart';
import 'package:respons/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.backGroundColor, required this.textColor});
  final Color textColor;
  final Color? backGroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: backGroundColor ??
              const Color(
                0xFF4DB7F2,
              ),
        ),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStyles.styleSemiBold16(context)
              .copyWith(color: textColor ?? Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}
