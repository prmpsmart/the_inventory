import 'package:flutter/material.dart';

import '../data/user.dart';

class Store extends StatelessWidget {
  final User user;
  const Store({
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 16,
            right: 16,
            bottom: 10,
          ),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              100,
              (index) {
                return Center(
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                );
              },
            ),
          ),
          // child: SizedBox(
          //   width: 1.sw,
          //   height: 1.sh,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           const CircleAvatar(
          //             backgroundImage: AssetImage('assets/dp.jpg'),
          //             radius: 50,
          //           ),
          //           10.verticalSpace,
          //           Text(
          //             "${user.username} Stores",
          //             style: TextStyle(
          //               fontSize: 14.spMax,
          //               fontWeight: FontWeight.w700,
          //             ),
          //           ),
          //           20.verticalSpace,
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceAround,
          //             children: [
          //               BlueButton(
          //                 width: .4.sw,
          //                 text: 'Edit Profile',
          //                 onPressed: () {},
          //               ),
          //               MaterialButton(
          //                 onPressed: () {},
          //                 minWidth: .4.sw,
          //                 height: 48.h,
          //                 shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(10.r),
          //                   side: BorderSide(
          //                     color: Colors.black.withOpacity(.6),
          //                   ),
          //                 ),
          //                 child: Text(
          //                   'About Us',
          //                   style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 15.spMin,
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),
          //       30.verticalSpace,
          //       Row(
          //         children: [
          //           const Icon(Icons.push_pin),
          //           20.horizontalSpace,
          //           Text(
          //             "Uploaded Items",
          //             style: TextStyle(
          //               color: const Color(0xffA1A1A1),
          //               fontSize: 14.spMax,
          //               fontWeight: FontWeight.w700,
          //             ),
          //           ),
          //         ],
          //       ),
          //       30.verticalSpace,
          //       // Expanded(
          //       //   child: Container(
          //       //     width: .95.sw,
          //       //     color: Colors.amber,
          //       //     padding: const EdgeInsets.all(5),
          //       //     child: Column(
          //       //       children: [
          //       //         ListView.builder(
          //       //           itemCount: 8,
          //       //           itemBuilder: (context, index) {
          //       //             return Text(
          //       //               'TETSTSTST $index',
          //       //               style: const TextStyle(
          //       //                 fontSize: 30,
          //       //               ),
          //       //             );
          //       //           },
          //       //         ),
          //       //       ],
          //       //     ),
          //       //   ),
          //       // )
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
