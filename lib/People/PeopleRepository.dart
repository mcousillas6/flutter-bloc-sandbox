import 'package:movieapp/People/PeopleApiProvider.dart';
import 'package:movieapp/People/PeopleResponse.dart';

class PeopleRepository{
  PeopleApiProvider _apiProvider = PeopleApiProvider();

  Future<PeopleResponse> getPeople(){
    return _apiProvider.getPeople();
  }
}
