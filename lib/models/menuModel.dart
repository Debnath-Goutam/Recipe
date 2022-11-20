class Menu_Model {
  final int? totalItems;
  final String? foodImage;
  final String? foodName;

  Menu_Model({this.totalItems, this.foodImage, this.foodName});

  static List<Menu_Model> menuModelList = [
    Menu_Model(
      foodName: 'Food',
      totalItems: 120,
      foodImage:
      'https://i.picsum.photos/id/493/3872/2592.jpg?hmac=PWm2bsTKWkChWATD_2AD0F_GNifmGvQDPMHZp2sWhk0',
    ),
    Menu_Model(
      foodName: 'Beverages',
      totalItems: 220,
      foodImage:
      'https://i.picsum.photos/id/431/5000/3334.jpg?hmac=T2rL_gBDyJYpcr1Xm8Kv7L6bhwvmZS8nKT5w3ok58kA',
    )
  ];

}
