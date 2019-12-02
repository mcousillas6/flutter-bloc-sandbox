import 'package:movieapp/People/Person.dart';

class PeopleResponse {
  final List<Person> results;

  PeopleResponse(this.results);

  PeopleResponse.fromJson(Map<String, dynamic> json)
    : results = (json["results"] as List).map((i) => Person.fromJson(i)).toList();
}
