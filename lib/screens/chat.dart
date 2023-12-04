import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../commons/blue_button.dart';
import '../data/chats.dart';
import '../data/user.dart';
import 'overview.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  const ChatScreen({
    required this.user,
    super.key,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  ScrollController controller2 = ScrollController();
  void scrollDown1() {
    controller2.animateTo(
      controller2.position.maxScrollExtent,
      duration: const Duration(microseconds: 100),
      curve: Curves.fastOutSlowIn,
    );
  }

  void scrollDown2() {
    controller2.jumpTo(controller2.position.maxScrollExtent);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 100), scrollDown1);
  }

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(10);

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Overview(user: widget.user),
                  ),
                ),
                child: Container(
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
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 15.0),
                  itemCount: chats.length,
                  controller: controller2,
                  itemBuilder: (BuildContext context, int index) {
                    final chat = chats[index];
                    return Column(
                      crossAxisAlignment: chat.isMe
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: .7.sw,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: chat.isMe
                                ? const Color(0xff103EEE)
                                : const Color(0xffF2F4F7),
                            borderRadius: chat.isMe
                                ? const BorderRadius.only(
                                    topLeft: radius,
                                    topRight: radius,
                                    bottomLeft: radius,
                                  )
                                : const BorderRadius.only(
                                    topLeft: radius,
                                    topRight: radius,
                                    bottomRight: radius,
                                  ),
                          ),
                          child: Text(
                            chat.message,
                            style: TextStyle(
                              color: chat.isMe ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.w),
                height: 130.h,
                decoration: BoxDecoration(
                    border: Border.all(width: .4),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Column(
                  children: [
                    Expanded(
                      child: TextField(
                        autocorrect: true,
                        maxLines: 5,
                        controller: controller,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Write a message...",
                          hintStyle: TextStyle(
                            fontSize: 13.spMin,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1,
                            color: Colors.grey,
                            // color: Colors.blue[400] as Color,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5.w),
                        child: Row(
                          children: [
                            BlueButton(
                              text: 'Send Message',
                              onPressed: () {
                                if (controller.text.isNotEmpty) {
                                  setState(() {
                                    chats.add(
                                      Chat(true, controller.text),
                                    );
                                    controller.text = '';
                                    scrollDown2();
                                  });
                                }
                              },
                              height: 40,
                              fontSize: 12,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.link),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.emoji_emotions_outlined),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.image),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert_rounded),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  controller.text = '';
                                });
                              },
                              icon: const Icon(Icons.delete_outline_rounded),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
