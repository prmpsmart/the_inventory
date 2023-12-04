import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: const Color(0xff0F8152),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Container(
                height: 60,
                width: 2,
                decoration: BoxDecoration(
                    color: const Color(0xff0F8152),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ],
          ),
          15.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Quantity addition (+20) to “Fanta”',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.spMax,
                ),
              ),
              Text(
                'by Caxri',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.spMax,
                ),
              ),
              Row(
                children: [
                  Text(
                    'May 22, 2023',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.spMax,
                    ),
                  ),
                  Text(
                    '12:30 am',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.spMax,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
