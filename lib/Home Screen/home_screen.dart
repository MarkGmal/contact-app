import 'package:flutter/material.dart';
import '../Common/Consts/app_color.dart';
import '../Common/Consts/app_const.dart';
import '../Common/Model/card_model.dart';
import 'Widget/contact_list.dart';
import 'Widget/empty_list.dart';
import 'Widget/modal_bottom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            isScrollControlled: true,
          );
        },
        child: Icon(Icons.add, color: AppColorS.darkBlueColor, size: 24),
      floatingActionButton: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: CardModel.cards.isEmpty ? false : true,
            child: FloatingActionButton(
              backgroundColor: AppColorS.redColor,
              onPressed: () {
                setState(() {
                  CardModel.cards.clear();
                });
              },
              child: Icon(
                Icons.delete_rounded,
                color: AppColorS.lightBlueColor,
                size: 24,
              ),
            ),
          ),
          Visibility(
            visible: CardModel.cards.length >= 6 ? false : true,
            child: FloatingActionButton(
              backgroundColor: AppColorS.goldColor,
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: AppColorS.darkBlueColor,
                  context: context,
                  builder: (context) => ModalBottom(),
                ).then((value) {
                  setState(() {});
                });
              },
              child: Icon(Icons.add, color: AppColorS.darkBlueColor, size: 24),
            ),
          ),
        ],
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
                ? Center(child: EmptyList())
                : Expanded(child: ContactList()),
          ],
        ),
      ),
    );
  }
}
