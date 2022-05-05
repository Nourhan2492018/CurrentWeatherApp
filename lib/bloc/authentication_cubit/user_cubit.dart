

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/authentication_cubit/user_state.dart';
import 'package:weather/views/authentication/components/toast.dart';
import '../../models/user/user.dart';
class UserCubit extends Cubit<UserState>
{
  UserCubit() : super(UserInitial());
  static  UserCubit get (context)=> BlocProvider.of(context);
   bool Login(User user)
   {
     if(user.email=='nourhanmahmoud246@gmail.com')
       {
         if (user.password=='1234')
           {
             emit(UserLoginSuccessState());
             return true;
           }
         else
           {
             MyToast.getToast('Error Password');
             emit(UserLoginErrorState());
           }
       }
     else
       {
         MyToast.getToast('Error Email');
         emit(UserLoginErrorState());
       }
      return false;
   }
   bool register(User user)
   {
     emit(UserRegisterSuccessState());
     return true;
   }
}