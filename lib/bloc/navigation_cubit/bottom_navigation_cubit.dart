import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/navigation_cubit/bottom_navigation_state.dart';
import 'package:weather/views/home/components/home_body.dart';
import 'package:weather/views/home/components/search_body.dart';
import '../../views/home/components/notification_body.dart';
import '../../views/home/components/settings_body.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState>
{
  int itemIndex=0;
  Color color=Colors.orangeAccent;
  List<Widget>views=[
    HomeBody(),
    SearchBody(),
    NotificationBody(),
    SettingBody(),
  ];
  BottomNavigationCubit() : super(BottomNavigationInitial());
 static BottomNavigationCubit get(context) => BlocProvider.of(context);
 void  ChangeIndex(int index)
 {
   itemIndex=index;
   emit(BottomNavigationChange());
 }


}