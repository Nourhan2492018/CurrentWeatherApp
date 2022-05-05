import 'package:flutter/material.dart';
import 'package:weather/bloc/authentication_cubit/user_cubit.dart';
import 'package:weather/components/logo.dart';
import 'package:weather/views/authentication/components/button.dart';
import 'package:weather/views/authentication/components/text_felid.dart';
import 'package:weather/views/home/home_view.dart';

import '../../models/user/user.dart';
class RegisterView extends StatefulWidget {
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  var email=TextEditingController();
  var pass=TextEditingController();
  var phone=TextEditingController();
  var name=TextEditingController();
  var address=TextEditingController();
  var userName=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isScure= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    TextFromFiled(Icon(Icons.person), name, 'Name', 'enter your name',TextInputType.name,'Please Enter Your name'),
                    SizedBox(height: 15,),
                    TextFromFiled(Icon(Icons.account_circle_outlined), userName, 'UserName', 'enter your userName',TextInputType.name,'Please Enter Your username'),
                    SizedBox(height: 15,),
                    TextFromFiled(Icon(Icons.phone), phone, 'Phone', 'enter your phone ',TextInputType.phone,'Please Enter Your phone'),
                    SizedBox(height: 15,),
                    TextFromFiled(Icon(Icons.location_on_outlined), address, 'Address', 'enter your Address',TextInputType.streetAddress,'Please Enter Your address'),
                    SizedBox(height: 15,),
                    TextFromFiled(Icon(Icons.email_outlined), email, 'Email', 'enter your email',TextInputType.emailAddress,'Please Enter Your Email Address'),
                    SizedBox(height: 15,),
                    TextFromFiled(Icon(Icons.lock), pass, 'Password', 'enter your password',TextInputType.visiblePassword,'Please Enter Your Password',isScure: isScure,suficon:isScure?Icon(Icons.visibility_off):Icon(Icons.visibility),suffixPressed: (){setState(() {
                      isScure=!isScure; ;
                    });}),
                    SizedBox(height: 20,),
                    Button(new User(password: pass.value.text,email:email.value.text,address:address.value.text,phone: phone.value.text,userName:userName.value.text,name: name.value.text), HomeView(),Icon(Icons.add_moderator,color: Colors.white),' Register',_formKey,UserCubit.get(context)),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
