import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper{
 static late Dio dio;
 static init()
 {
   String baseUrl ='https://api.openweathermap.org/';
   print(baseUrl);
   dio=Dio(
     BaseOptions(
       baseUrl:baseUrl,
       receiveDataWhenStatusError: true,

     )
   );
   print(baseUrl);
 }
 static Future<Response> getData({
   required String url ,  required  Map <String, dynamic> query,
 })async
 {
    //print('getData');
    return await dio.get(url,queryParameters: query);

 }
}