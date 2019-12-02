class Person {
  String name;
  String mass;

  Person(this.name, this.mass);
  Person.fromJson(Map<String, dynamic> json)
    : name = json["name"],
      mass = json["mass"];
}
