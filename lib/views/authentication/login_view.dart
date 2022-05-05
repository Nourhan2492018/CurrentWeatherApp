import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/authentication_cubit/user_cubit.dart';
import 'package:weather/bloc/authentication_cubit/user_state.dart';
import 'package:weather/components/logo.dart';
import 'package:weather/views/authentication/components/button.dart';
import 'package:weather/components/text_info.dart';
import 'package:weather/views/authentication/components/text_felid.dart';
import 'package:weather/views/authentication/components/toast.dart';
import 'package:weather/views/authentication/register_view.dart';
import 'package:weather/views/home/home_view.dart';
import '../../models/user/user.dart';
class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}
class _LoginViewState extends State<LoginView> {
  var email=TextEditingController();
  var pass=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isScure= true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit,UserState>(
      listener: (context, state){
        if(state is UserLoginSuccessState)
        {
          MyToast.getToast('User Success Login');
        }
        else if(state is UserLoginErrorState)
        {
          MyToast.getToast('User Failed Login');
        }
      },
      builder: (context,state){
        return  Scaffold(
          appBar:AppBar(backgroundColor: Colors.white,elevation: 0,),
          body: Container(color: Colors.white,height: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical:30,
                  horizontal: 20,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(2000.0),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Logo(),
                        ),
                        SizedBox(height: 30,),
                        TextFromFiled(Icon(Icons.email_outlined), email, 'Email', 'enter your email',TextInputType.emailAddress,'Please Enter Your Email Address'),
                        SizedBox(height: 15,),
                        TextFromFiled(Icon(Icons.lock), pass, 'Password', 'enter your password',TextInputType.visiblePassword,'Please Enter Your Password',isScure: isScure,suficon:isScure?Icon(Icons.visibility_off):Icon(Icons.visibility),suffixPressed: (){setState(() {
                          isScure=!isScure; ;
                        });}),
                        SizedBox(height: 30,),
                        Button(new User(email:email.value.text,password: pass.value.text), HomeView(),Icon(Icons.login,color: Colors.white),' Login',_formKey,UserCubit.get(context)),
                        SizedBox(height: 20,),
                        Card(
                          elevation: 3,
                          color: Colors.white,
                          clipBehavior:Clip.antiAliasWithSaveLayer,
                          child:TextInfo("if you haven't Account ?", 20,FontStyle.normal,Colors.blue),
                        ),
                        SizedBox(height: 20,),
                        Button(new User(), RegisterView(),Icon(Icons.login,color: Colors.white),' Register Now',_formKey,UserCubit.get(context)),
                      ]),
                ),

              ),
            ),
          ),
        );
    },
    );
  }
}
