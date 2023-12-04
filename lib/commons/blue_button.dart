import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final double width;
  final double height;
  final double fontSize;
  const BlueButton({
    super.key,
    this.width = 1,
    this.height = 48,
    this.fontSize = 15,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: width,
      height: height.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      color: Colors.blue[900],
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize.spMin,
        ),
      ),
    );
  }
}
