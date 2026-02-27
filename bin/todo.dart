import 'package:dio/dio.dart';

void main()async{

  /*
  1. login 
  2. register


  1. get tasks
  2. add task
  3. update task
  */
  var dio = Dio(BaseOptions(
    baseUrl: 'https://ntitodo-production-779a.up.railway.app/api/'
  ));

  try{
    var loginReposne =  await dio.post('login', data: FormData.fromMap({
      'username': 'ahmed',
      'password': '12345678'
    }));
    print(loginReposne.data.toString());
  }
  catch(e){
    if(e is DioException ){
      print(e.response.toString());
    }
    else {
      print(e.toString());
    }
  }

  // try{
  //   var loginReposne =  await dio.post('register', data: FormData.fromMap({
  //     'username': 'ahmed',
  //     'password': '12345678',
  //   }));
  //   print(loginReposne.data.toString());
  // }
  // catch(e){
  //   if(e is DioException ){
  //     print(e.response.toString());
  //   }
  //   else {
  //     print(e.toString());
  //   }
  // }
}