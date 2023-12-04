import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../commons/blue_button.dart';
import '../data/user.dart';
import 'store.dart';

class Success extends StatelessWidget {
  final User user;
  const Success({
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding: const EdgeInsets.only(top: 20),
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
            30.verticalSpace,
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                width: 1.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20.r),
                          width: 120.w,
                          height: 120.h,
                          decoration: BoxDecoration(
                            color: const Color(0xff103EEE).withOpacity(.2),
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/suc.jpg'),
                          ),
                        ),
                        30.verticalSpace,
                        Text(
                          "You have successfully\ncreated an account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.spMax,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        20.verticalSpace,
                        Text(
                          "Allow access to your registered biometrics\nfor a more secure login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.spMax,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    BlueButton(
                      width: 1.sw,
                      text: 'Continue',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Store(user: user),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
