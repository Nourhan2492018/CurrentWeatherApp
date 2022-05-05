import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/authentication_cubit/user_cubit.dart';
import 'package:weather/bloc/navigation_cubit/bottom_navigation_cubit.dart';
import 'package:weather/views/splash_view.dart';
import '../bloc/weather_cubit/current_weather_cubit.dart';
class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => UserCubit()),
        BlocProvider(create: (BuildContext context) => BottomNavigationCubit()),
        BlocProvider(create: (BuildContext context) => CurrentWeatherCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splashview(),
      ),
    );
  }
}
