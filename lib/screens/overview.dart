import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/user.dart';

class Overview extends StatelessWidget {
  final User user;
  const Overview({
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 85.h,
              padding: EdgeInsets.only(
                left: 10.w,
                right: 15.w,
                top: 15.h,
                bottom: 15.h,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: .2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: const AssetImage('assets/dp.jpg'),
                        radius: 20.r,
                      ),
                      10.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          5.verticalSpace,
                          Row(
                            children: [
                              Text(
                                "Welcome back, Babatoye!",
                                style: TextStyle(
                                  fontSize: 12.spMax,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              5.horizontalSpace,
                              Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Colors.green[700],
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Overview",
                            style: TextStyle(
                              fontSize: 18.spMax,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            10.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Inventory Summary',
                        style: TextStyle(
                          fontSize: 16.spMax,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 120.w,
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              gapPadding: 0,
                            ),
                          ),
                          value: 'Today',
                          style: TextStyle(
                            fontSize: 14.spMax,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(.6),
                          ),
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'Today',
                              child: Text('Today'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Yesterday',
                              child: Text('Yesterday'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Tomorrow',
                              child: Text('Tomorrow'),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xff040614),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Expenses',
                              style: TextStyle(
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
                                const Text(
                                  '₦ 3,000',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
