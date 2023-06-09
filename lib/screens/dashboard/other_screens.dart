import 'package:auto_adjust/auto_adjust.dart';
import 'package:buy_it_now/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// class OtherScreens extends StatelessWidget {
//   const OtherScreens({
//     super.key,
//     required this.name,
//   });
//   final String name;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           name,
//           style: kTextStyleCustom(),
//         ),
//       ),
//     );
//   }
// }

class OtherScreens extends StatelessWidget {
  const OtherScreens({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Gap(autoAdjustHeight(50)),
          Row(
            children: [
             
            ],
          )
        ],
      )),
    );
  }
}
