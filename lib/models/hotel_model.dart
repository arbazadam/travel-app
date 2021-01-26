class Hotel {
  final String id;
  final String hotelName;
  final String imageUrl;
  final String cityName;

  Hotel({this.id, this.hotelName, this.imageUrl, this.cityName});

  factory Hotel.fromJSON(Map<String, dynamic> hotel) {
    return Hotel(
        imageUrl: hotel['imageUrl'],
        hotelName: hotel['hotelName'],
        id: hotel['hotelId'],
        cityName: hotel['cityName']);
  }
}
