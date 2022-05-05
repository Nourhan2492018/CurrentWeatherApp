import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/weather_cubit/current_weather_state.dart';
import '../../models/Weather/current_weather.dart';
import '../../server/dio_helper.dart';


class CurrentWeatherCubit extends Cubit<CurrentWeatherState>
{
  static CurrentWeather ? currentWeather;
  CurrentWeatherCubit() : super(CurrentWeatherInitial());

  static CurrentWeatherCubit get(context)=>BlocProvider.of(context);
  void getCurrentWeatherCity(city){
    emit(CurrentWeatherLoadingState());
    DioHelper.getData(url: 'data/2.5/weather',
        query: {
          'q':city,
          //8785f2921c104e3e4df653beb87ab40c
          'appid':'2c8bde6a2a5be3a4219bb5ab8c1ceaa5',
        }
    ).then((value){
      //print(value.data.toString());
      var jsonData = new Map<String,dynamic>.from(value.data);
      currentWeather = CurrentWeather.fromJson(jsonData);
      emit(CurrentWeatherSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(CurrentWeatherErrorState(error));
    });
  }
}