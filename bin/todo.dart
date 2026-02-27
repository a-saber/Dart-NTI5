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

  try{
    var tasksReposne =  await dio.get('my_tasks', options: Options(
      headers: {
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTc3MjIwMDA2NSwianRpIjoiOGQ2NDRmMTMtNWQ5NC00YmM5LWI4MGQtMzM4N2QyM2E4NDljIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6MywibmJmIjoxNzcyMjAwMDY1LCJjc3JmIjoiOWNiNjUzYjUtYzZjOC00M2Q1LTgzYjctNjExNDE1N2E5ZGRlIiwiZXhwIjoxNzcyMjAwOTY1fQ.NzDtJr5r-2CuRR54NWAvTsKTAU-xdnFYgTIypqayyrk'
      }
    ));
    print(tasksReposne.data.toString());
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