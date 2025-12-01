import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import '../../Common/Consts/app_color.dart';
import '../../Common/Consts/app_const.dart';

class SelectImagePicker extends StatefulWidget {
  const SelectImagePicker({super.key, required this.selectedImage});
   final ValueChanged<File?> selectedImage;

  @override
  State<SelectImagePicker> createState() => _SelectImagePickerState();
}

class _SelectImagePickerState extends State<SelectImagePicker> {
  File? _image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        ImagePicker imagePicker = ImagePicker();
        var file = await imagePicker.pickImage(source: ImageSource.gallery);
        if (file != null) {
          setState(() {
            _image = File(file.path);
          });
          widget.selectedImage(_image);
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          border: Border.all(color: AppColorS.goldColor,width: 1.5),
          borderRadius: BorderRadius.circular(24),
        ),
        child: _image == null
            ? Lottie.asset(AppConst.imagePicker)
            : ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.file(
                  _image!,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
