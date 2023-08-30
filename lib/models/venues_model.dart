class VenuesModel {
  String country;
  String city;
  String stadium;
  String images;

  VenuesModel({
    required this.city,
    required this.country,
    required this.images,
    required this.stadium,
  });

  static VenuesModel fromJOSN(Map<String, dynamic> map) {
    return VenuesModel(
      city: map['city'],
      country: map['country'],
      images: map['image'],
      stadium: map['stadium'],
    );
  }
}
