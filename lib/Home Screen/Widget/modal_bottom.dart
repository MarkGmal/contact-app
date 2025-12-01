import 'dart:io';

import 'package:contact_app/Common/Model/card_model.dart';
import 'package:contact_app/Home%20Screen/Widget/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../Common/Consts/app_color.dart';
import '../../Common/Consts/app_const.dart';
import '../../Common/Consts/app_text_style.dart';
import '../../Common/Widgets/custom_main_button.dart';
import '../../Common/Widgets/custom_text_field.dart';
import 'image_picker.dart';

class ModalBottom extends StatefulWidget {
  const ModalBottom({super.key});

  @override
  State<ModalBottom> createState() => _ModalBottomState();
}

class _ModalBottomState extends State<ModalBottom> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  File? image;

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
      child: Column(
        spacing: 12,
        children: [
          Row(
            children: [
              SelectImagePicker(
                selectedImage: (value) {
                  setState(() {
                    image = value;
                  });
                },
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: nameController,
                      builder: (context, value, child) => Text(
                        value.text.isEmpty ? "User Name" : value.text,
                        style: AppTextStyle.bodyLarge.copyWith(fontSize: 16),
                      ),
                    ),

                    Divider(thickness: 2, color: AppColorS.goldColor),
                    ValueListenableBuilder(
                      valueListenable: emailController,
                      builder: (context, value, child) => Text(
                        value.text.isEmpty ? "example@email.com" : value.text,
                        style: AppTextStyle.bodyLarge.copyWith(fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 2, color: AppColorS.goldColor),
                    ValueListenableBuilder(
                      valueListenable: phoneController,
                      builder: (context, value, child) => Text(
                        value.text.isEmpty ? "+200000000000" : value.text,
                        style: AppTextStyle.bodyLarge.copyWith(fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 2, color: AppColorS.goldColor),
                  ],
                ),
              ),
            ],
          ),
          CustomTextField(
            hintText: "Enter User Name ",
            controller: nameController,
          ),
          CustomTextField(
            hintText: "Enter User Email ",
            controller: emailController,
          ),
          CustomTextField(
            hintText: "Enter User Phone",
            controller: phoneController,
          ),
          CustomMainButton(
            onPressed: () {
              CardModel addContact = CardModel(
                image: image,
                name: nameController.text,
                email: emailController.text,
                phone: phoneController.text,
              );
              CardModel.cards.add(addContact);
              Navigator.pop(context);
            },
            text: "Enter user",
            color: AppColorS.goldColor,
            textColor: AppColorS.darkBlueColor,
          ),
        ],
      ),
    );
  }
}
