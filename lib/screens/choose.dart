import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_inventory/commons/blue_button.dart';

import 'form.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String selected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: 100.h,
            bottom: 40.h,
            left: 16.w,
            right: 16.w,
          ),
          child: Column(
            children: [
              Text(
                "What do you plan to achieve using The Inventory",
                style: TextStyle(
                  fontSize: 24.spMax,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              50.verticalSpace,
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selected = 'i';
                  });
                },
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                      width: selected == 'i' ? 2 : .3,
                      color: selected == 'i'
                          ? const Color(0xff103EEE)
                          : Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/ind.jpg'),
                    ),
                    5.verticalSpace,
                    Text(
                      "Individual",
                      style: TextStyle(
                        fontSize: 16.spMax,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "I need organize and categorize the various items in my household.",
                      style: TextStyle(
                        fontSize: 12.spMax,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selected = 's';
                  });
                },
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                      width: selected == 's' ? 2 : .3,
                      color: selected == 's'
                          ? const Color(0xff103EEE)
                          : Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/store.jpg'),
                    ),
                    5.verticalSpace,
                    Text(
                      "Store",
                      style: TextStyle(
                        fontSize: 16.spMax,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "I need to monitor and keep tabs on items within all my store outlets.",
                      style: TextStyle(
                        fontSize: 12.spMax,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              BlueButton(
                text: 'Next',
                width: 1.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FormScreen(isStore: selected == 's'),
                    ),
                  );
                },
              ),
              10.verticalSpace,
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: 'By proceeding, you agree to our ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.spMin,
                  ),
                  children: [
                    TextSpan(
                      text: "Terms of Use",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 12.spMin,
                      ),
                    ),
                    TextSpan(
                      text: " and confirm you have read our ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.spMin,
                      ),
                    ),
                    TextSpan(
                      text: "Privacy Statement.",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 12.spMin,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
