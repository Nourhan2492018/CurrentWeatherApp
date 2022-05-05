import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/weather_cubit/current_weather_cubit.dart';
import 'package:weather/bloc/weather_cubit/current_weather_state.dart';
import 'package:weather/views/home/components/home_row.dart';
import 'package:weather/views/home/components/home_text.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
class HomeBody extends StatelessWidget {
  List <String> images=[
    'assets/images/cloudy.png',
    'assets/images/rainy-day.png',
    'assets/images/storm.png',
  ];
  List <String> values=[

  ];
  List <String> names=[
   'Temperature',
    'humidity ',
    'visibility',
  ];
  @override
  Widget build(BuildContext context) {

    CurrentWeatherCubit.get(context).getCurrentWeatherCity('Egypt');

    return BlocConsumer<CurrentWeatherCubit,CurrentWeatherState>
      (listener: (context, state) {
      },
    builder: (context,state)
      {
        return ConditionalBuilder(
            condition: state is !CurrentWeatherLoadingState,
            builder: (context) {
              values.add(CurrentWeatherCubit.currentWeather!.main!.temp!.toString());
              values.add(CurrentWeatherCubit.currentWeather!.main!.humidity!.toString());
              values.add(CurrentWeatherCubit.currentWeather!.visibility!.toString());
              return Container(color: Colors.white, width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical:20 ,),
                      child: HomeText("Today's Report "+CurrentWeatherCubit.currentWeather!.name!,25, FontWeight.bold,Colors.blue),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Image(
                        height: 200,
                        width: 200,
                        image:AssetImage('assets/images/weather.png'),
                      ),
                    ),
                    Center(child: HomeText("Its Cloudy ",20, FontWeight.bold,Colors.blue)),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left:205,bottom: 0),
                      child:HomeText("C` ",30, FontWeight.normal,Colors.orangeAccent),
                    ),
                    Center(child: HomeText("29 ",80, FontWeight.bold,Colors.blue)),
                    HomeRow(images,values,names),
                  ],
                ),
              );
            },
            fallback: (context)=> Center(child: CircularProgressIndicator(color: Colors.orangeAccent,))
        );
      },);
  }
}
