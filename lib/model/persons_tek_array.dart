// ignore_for_file: public_member_api_docs, sort_constructors_first
class Persons {
  String id;
  String name;
  String phone;
  Persons({
    required this.id,
    required this.name,
    required this.phone,
  });

  factory Persons.fromJson(Map<String, dynamic> json) {
    return Persons(
        id: json["kisi_id"] as String,
        name: json["kisi_ad"] as String,
        phone: json["kisi_tel"] as String);
  }
}
