// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Entry extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool readOnly;
  final Function()? onTap;

  const Entry({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.readOnly = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12.spMax,
            fontWeight: FontWeight.w700,
          ),
        ),
        10.verticalSpace,
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 3,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
              border: Border.all(width: .3),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            controller: controller,
            onTap: onTap,
            readOnly: readOnly,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              labelStyle: TextStyle(
                fontSize: 14.spMax,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
