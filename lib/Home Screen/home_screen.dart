import 'package:flutter/material.dart';
import '../Common/Consts/app_color.dart';
import '../Common/Consts/app_const.dart';
import '../Common/Model/card_model.dart';
import 'Widget/contact_list.dart';
import 'Widget/empty_list.dart';
import 'Widget/modal_bottom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColorS.goldColor,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: AppColorS.darkBlueColor,
            context: context,
            builder: (context) => ModalBottom(),
          );
        },
        child: Icon(Icons.add, color: AppColorS.darkBlueColor, size: 24),
      ),
      body: SafeArea(
        child: Column(
          spacing: 27,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FractionallySizedBox(
              widthFactor: 0.3,
              child: Image.asset(AppConst.logoRoute),
            ),
            CardModel.cards.isEmpty
                ? EmptyList()
                : Expanded(child: ContactList()),
          ],
        ),
      ),
    );
  }
}
