// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Summary extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final String price;
  const Summary({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: .3.sw,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.trending_up,
                color: Colors.white,
              ),
              10.horizontalSpace,
              Text(
                '₦ $price',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
