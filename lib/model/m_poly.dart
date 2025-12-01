class Poly {
  String? id;
  String namaPoly;

  Poly({this.id, required this.namaPoly});

  factory Poly.fromJson(Map<String, dynamic> json) =>
      Poly(id: json['id'], namaPoly: (json['namaPoly']));

  Map<String, dynamic> tiJson() => {"namaPoly": namaPoly};
}
