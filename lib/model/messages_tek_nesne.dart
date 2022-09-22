class Messages {
  int messageCode;
  String messageContent;
  Messages({
    required this.messageCode,
    required this.messageContent,
  });

  //*json parametresi bizden {"mesaj_kod" : 1,"mesaj_icerik" : "basarili"} bu sekilde bir veri beklemektedir
//*eger boyle bir veri ektarabilirsek bize bu yapiyi parse ederek bir nesne verecektir.

  factory Messages.fromJson(Map<String, dynamic> json) {
    return Messages(
        messageCode: json["mesaj_kod"] as int,
        messageContent: json["mesaj_icerik"] as String);
  }
}
