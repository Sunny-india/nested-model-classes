class User {
  int? id;
  String name;
  Address address;
  User({this.id, required this.name, required this.address});

  Map<String, dynamic> toMap() {
    return {'name': name, 'address': address};
  }
}

class Address {
  int? id;
  int userId;
  String houseNumber;
  String area;
  String city;
  Address(
      {this.id,
      required this.userId,
      required this.houseNumber,
      required this.area,
      required this.city});

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'houseNumber': houseNumber,
      'area': area,
      'city': city
    };
  }
}
