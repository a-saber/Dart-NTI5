import 'package:dio/dio.dart';


void main() async {
  final dio = Dio();
  final response = await dio.get('https://newsapi.org/v2/everything', 
  queryParameters: {
    'apiKey': '836086f05b344448a16dd41ee51c6320',
    'q': 'b',
    'from': '2026-02-01',
    'to': '2026-02-01',

  });
  print(response);

}