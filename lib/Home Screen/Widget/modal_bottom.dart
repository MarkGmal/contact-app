import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../Common/Consts/app_color.dart';
import '../../Common/Consts/app_const.dart';
import '../../Common/Consts/app_text_style.dart';
import '../../Common/Widgets/custom_main_button.dart';
import '../../Common/Widgets/custom_text_field.dart';

class ModalBottom extends StatelessWidget {
  const ModalBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom+15,
          top: 18,
          right: 16,
          left: 16
        ),
        child: Column(
          spacing: 12,
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColorS.goldColor),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Lottie.asset(AppConst.imagePicker),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User Name",
                        style: AppTextStyle.bodyLarge.copyWith(fontSize: 16),
                      ),
                      Divider(thickness: 2, color: AppColorS.goldColor),
                      Text(
                        "example@email.com",
                        style: AppTextStyle.bodyLarge.copyWith(fontSize: 16),
                      ),
                      Divider(thickness: 2, color: AppColorS.goldColor),
                      Text(
                        "+200000000000",
                        style: AppTextStyle.bodyLarge.copyWith(fontSize: 16),
                      ),
                      Divider(thickness: 2, color: AppColorS.goldColor),
                    ],
                  ),
                ),
              ],
            ),
            CustomTextField(hintText: "Enter User Name "),
            CustomTextField(hintText: "Enter User Email "),
            CustomTextField(hintText: "Enter User Phone"),
            CustomMainButton(
              text: "Enter user",
              color: AppColorS.goldColor,
              textColor: AppColorS.darkBlueColor,
            ),
          ],
        ),
      ),
    );
  }
}
