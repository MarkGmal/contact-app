class CardModel {
  final String image;
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
    CardModel(
      image: "https://randomuser.me/api/portraits/men/1.jpg",
      name: "Mark Gamal",
      email: "mark@example.com",
      phone: "01000000000",
    ),
    CardModel(
      image: "https://randomuser.me/api/portraits/women/2.jpg",
      name: "Sarah Ahmed",
      email: "sarah@example.com",
      phone: "01111111111",
    ),
    CardModel(
      image: "https://randomuser.me/api/portraits/men/3.jpg",
      name: "John Doe",
      email: "john@example.com",
      phone: "01222222222",
    ),
    CardModel(
      image: "https://randomuser.me/api/portraits/women/4.jpg",
      name: "Mariam Samir",
      email: "mariam@example.com",
      phone: "01055555555",
    ),
    CardModel(
      image: "https://randomuser.me/api/portraits/men/5.jpg",
      name: "Peter Hanna",
      email: "peter@example.com",
      phone: "01544444444",
    ),
    CardModel(
      image: "https://randomuser.me/api/portraits/women/6.jpg",
      name: "Hana Khaled",
      email: "hana@example.com",
      phone: "01099999999",
    ),
  ];
}
