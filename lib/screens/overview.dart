import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../commons/recent.dart';
import '../commons/summary.dart';
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  20.verticalSpace,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Summary(
                        title: 'Total',
                        subtitle: 'Expenses',
                        color: Color(0xff040614),
                        price: '3,000',
                      ),
                      Summary(
                        title: 'Total Stock',
                        subtitle: 'Expenses',
                        color: Color(0xff0F8152),
                        price: '8,200',
                      ),
                      Summary(
                        title: 'Total',
                        subtitle: 'Expenses',
                        color: Color(0xff103EEE),
                        price: '10,000',
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    'Recent Activities',
                    style: TextStyle(
                      fontSize: 16.spMax,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Recent(),
                  const Recent(),
                  const Recent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
