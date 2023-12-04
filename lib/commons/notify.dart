import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> notify(
  BuildContext context,
  String message, {
  bool isError = false,
}) async {
  final overlayEntry = OverlayEntry(
    builder: (BuildContext context) {
      return InAppNotification(
        message: message,
        isError: isError,
      );
    },
  );
  Navigator.of(context).overlay?.insert(overlayEntry);
  await Future<dynamic>.delayed(
    const Duration(
      seconds: 2,
    ),
  );
  overlayEntry.remove();
}

class InAppNotification extends StatefulWidget {
  const InAppNotification({
    required this.message,
    required this.isError,
    super.key,
  });
  final String message;
  final bool isError;

  @override
  State<StatefulWidget> createState() => InAppNotificationState();
}

class InAppNotificationState extends State<InAppNotification>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> position;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    );
    position =
        Tween<Offset>(begin: const Offset(0, -4), end: Offset.zero).animate(
      CurvedAnimation(parent: controller, curve: Curves.bounceInOut),
    );

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
            child: SlideTransition(
              position: position,
              child: DecoratedBox(
                decoration: ShapeDecoration(
                  color: widget.isError
                      ? Colors.red
                      : widget.isError
                          ? Colors.yellow[900]
                          : Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10).r,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 275.w,
                        child: Text(
                          widget.message,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 28.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: !widget.isError
                                ? Colors.white
                                : const Color(0xffF59F8C)),
                        child: Icon(
                          !widget.isError ? Icons.done : Icons.close,
                          color: !widget.isError ? Colors.green : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
