// ignore_for_file: public_member_api_docs, sort_constructors_first
class Director {
  String directorId;
  String directorName;
  Director({
    required this.directorId,
    required this.directorName,
  });

  factory Director.fromJson(Map<String, dynamic> json) {
    return Director(
        directorId: json["yonetmen_id"] as String,
        directorName: json["yonetmen_ad"] as String);
  }
}
