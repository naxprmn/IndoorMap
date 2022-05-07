class Ruang {
  String location;
  String name;
  String title;
  String photo;
  String locationphoto;
  bool status;
  List<double> position;
  int tile;

  Ruang({
    required this.location,
    required this.name,
    required this.title,
    required this.photo,
    required this.locationphoto,
    required this.status,
    required this.position,
    required this.tile,
  });

  factory Ruang.fromMap(Map data) => Ruang(
      name: data['name'] ?? 'No name.',
      title: data['title'] ?? 'No name.',
      photo: data['photo'] ?? 'No name.',
      locationphoto: data['locationphoto'] ?? 'No name.',
      location: data['location'] ?? 'No location.',
      status: data['status'] ?? false,
      position: data['position'] ?? [0.0],
      tile: data['tile'] ?? 0);
}
