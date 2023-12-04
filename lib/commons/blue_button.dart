import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final double width;
  const BlueButton({
    super.key,
    required this.width,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: width,
      height: 48.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      color: Colors.blue[900],
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.spMin,
        ),
      ),
    );
  }
}
