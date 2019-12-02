import 'package:dio/dio.dart';
import 'package:movieapp/People/PeopleResponse.dart';

class PeopleApiProvider{
  final String _endpoint = "https://swapi.co/api/people";
  final Dio _dio = Dio();

  Future<PeopleResponse> getPeople() async {
    try {
      Response response = await _dio.get(_endpoint);
      return PeopleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return PeopleResponse([]);
    }
  }
}
