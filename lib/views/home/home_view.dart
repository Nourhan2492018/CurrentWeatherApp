import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/navigation_cubit/bottom_navigation_cubit.dart';
import 'package:weather/bloc/navigation_cubit/bottom_navigation_state.dart';
import 'package:weather/views/home/components/home_app_bar.dart';
import 'package:weather/views/home/components/home_body.dart';
import 'package:weather/views/home/components/notification_body.dart';
import 'package:weather/views/home/components/search_body.dart';
import 'package:weather/views/home/components/settings_body.dart';

class HomeView extends StatelessWidget
{
 Color color=Colors.orangeAccent;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationCubit,BottomNavigationState>(
        listener:(context, state) {
        },
    builder: (context,state){
     return Scaffold(
            appBar:HomeAppBar(),
            bottomNavigationBar:BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home ,color: color,),label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.search ,color:color,),label: 'Search' ),
                  BottomNavigationBarItem(icon: Icon(Icons.notifications ,color: color,),label: 'notifications'),
                  BottomNavigationBarItem(icon: Icon(Icons.settings ,color:color,),label: 'settings '),
                ],
                selectedItemColor: Colors.orangeAccent,
                elevation: 0.0 ,onTap: (index){color=BottomNavigationCubit.get(context).color;BottomNavigationCubit.get(context).ChangeIndex(index);}, currentIndex:BottomNavigationCubit.get(context).itemIndex, backgroundColor: Colors.white,type: BottomNavigationBarType.fixed),
            body:BottomNavigationCubit.get(context).views[BottomNavigationCubit.get(context).itemIndex],

     );
    },);
  }
}
