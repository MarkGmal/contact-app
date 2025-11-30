import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../Common/Consts/app_color.dart';
import '../../Common/Consts/app_const.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Lottie.asset(
          AppConst.emptyList,
          width: 368,
          height: 368,
          fit: BoxFit.contain,
        ),
        Text(
          "There is No Contacts Added Here",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColorS.goldColor,
          ),
        ),
      ],
    );
  }
}
