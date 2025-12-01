import 'dart:io';

class CardModel {
  final File? image;
  final String name;
  final String email;
  final String phone;
  CardModel({
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
  });

  static List<CardModel> cards = [

  ];
}
