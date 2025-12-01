import 'package:flutter/material.dart';

import '../../Common/Consts/app_color.dart';
import '../../Common/Consts/app_text_style.dart';
import '../../Common/Model/card_model.dart';
import '../../Common/Widgets/custom_main_button.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 300,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: CardModel.cards.length,
      itemBuilder: (context, index) {
        CardModel contact = CardModel.cards[index];
        return Container(
          decoration: BoxDecoration(
            color: AppColorS.goldColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      if (contact.image != null)
                        Image.file(
                          contact.image!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColorS.goldColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          contact.name,
                          style: AppTextStyle.bodyLarge.copyWith(
                            color: AppColorS.darkBlueColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        Icon(Icons.email_outlined),
                        Text(
                          contact.email,
                          style: AppTextStyle.bodyLarge.copyWith(
                            fontSize: 14,
                            color: AppColorS.darkBlueColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        Icon(Icons.phone),
                        Text(
                          contact.phone,
                          style: AppTextStyle.bodyLarge.copyWith(
                            fontSize: 14,
                            color: AppColorS.darkBlueColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    SizedBox(
                      height: 31,
                      child: CustomMainButton(
                        onPressed: () {
                          setState(() {
                            CardModel.cards.removeAt(index);
                          });
                        },
                        text: "Delete",
                        color: AppColorS.redColor,
                        icon: true,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
