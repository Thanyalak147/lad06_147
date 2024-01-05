class Hobby {
  final String name;
  bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> getHobby() {
    return [
      Hobby(name: "เลี้ยงแมว", value: false),
      Hobby(name: "ปลูกต้นไม้", value: false),
      Hobby(name: "ดูหนัง", value: false),
    ];
  }
}
