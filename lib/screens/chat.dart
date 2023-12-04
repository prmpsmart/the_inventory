import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
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
                  // color: Colors.orange,
                  border: Border(
                bottom: BorderSide(width: .2),
              )),
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
                                "Babatoye Stores",
                                style: TextStyle(
                                  fontSize: 18.spMax,
                                  fontWeight: FontWeight.w700,
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
                            "+2348112345678",
                            style: TextStyle(
                              fontSize: 14.spMax,
                              color: Colors.grey,
                              // fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 52.w,
                    child: MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(
                        vertical: 7.r,
                        horizontal: 10.r,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Icon(
                          Icons.phone_outlined,
                          color: Colors.grey,
                          size: 22.r,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Column(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: .7.sh,
            //         margin: const EdgeInsets.only(top: 150),
            //         decoration: BoxDecoration(
            //           color: Colors.pink[900],
            //           borderRadius: const BorderRadius.only(
            //             topLeft: Radius.circular(70.0),
            //             // topRight: Radius.circular(30.0)
            //           ),
            //         ),
            //         child: ListView.builder(
            //           reverse: true,
            //           padding: const EdgeInsets.only(top: 15.0),
            //           itemCount: chats.length,
            //           itemBuilder: (BuildContext context, int index) {
            //             return SizedBox(
            //               height: .1.sh,
            //               width: .6.sw,
            //             );
            //           },
            //         ),
            //       ),
            //     ),
            //     // _buildMessageComposer(),
            //   ],
            // ),
            // Column(
            //   children: [
            //     ListView.builder(
            //       reverse: true,
            //       padding: const EdgeInsets.only(top: 15.0),
            //       itemCount: chats.length,
            //       itemBuilder: (BuildContext context, int index) {
            //         return SizedBox(
            //           height: .1.sh,
            //           width: .6.sw,
            //         );
            //       },
            //     ),
            //   ],
            // ),
            const Spacer(),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 10.w),
              margin: EdgeInsets.all(15.w),
              // color: Colors.cyanAccent,
              height: 130.h,
              decoration: BoxDecoration(
                  border: Border.all(width: .4),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Column(
                children: [
                  const Expanded(
                    child: TextField(
                      autocorrect: true,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 1,
                          // color: Colors.blue[400] as Color,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.w),
                      child: Row(children: [
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.blue[900],
                          child: const Text(
                            'Send Message',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
