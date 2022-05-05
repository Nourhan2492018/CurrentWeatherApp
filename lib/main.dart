
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/observer.dart';
import 'package:weather/bloc/weather_cubit/current_weather_cubit.dart';
import 'package:weather/server/dio_helper.dart';

import 'package:weather/src/app_root.dart';

void main() {
  //BlocOverrides.runZoned(() {
    //CurrentWeatherCubit();
  //}, blocObserver: AppBlocObserver());
  DioHelper.init();
  runApp( AppRoot());
}

