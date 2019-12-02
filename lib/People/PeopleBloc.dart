import 'package:movieapp/Core/BlocProvider.dart';
import 'package:movieapp/People/PeopleRepository.dart';
import 'package:movieapp/People/PeopleResponse.dart';
import 'package:movieapp/People/Person.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class PeopleBloc extends BlocBase {
  final peopleRepository = PeopleRepository();

  List<Person> people = [];

  BehaviorSubject<List<Person>> _peopleSubject;

  Observable<List<Person>> get peopleObservable => _peopleSubject.stream;

  PeopleBloc({this.people}) {
    _peopleSubject = new BehaviorSubject.seeded(this.people);
    getPeople();
  }

  getPeople() async {
    print("fetching people");
    PeopleResponse response = await peopleRepository.getPeople();
    _peopleSubject.add(response.results);
  }

  void dispose() {
    _peopleSubject.close();
  }
}
