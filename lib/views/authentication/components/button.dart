import 'package:flutter/material.dart';
import 'package:weather/bloc/authentication_cubit/user_cubit.dart';
import '../../../models/user/user.dart';
class Button extends StatelessWidget {
  User user;
  Widget Screen;
  String txt;
  final icon;
  GlobalKey <FormState>_formKey;
  UserCubit userCubit;
  Button(this.user, this.Screen,this.icon,this.txt, this._formKey,this.userCubit);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(2000.0),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(onPressed: (){
          if(txt==' Login')
            {
              if (_formKey.currentState!.validate()) {
                if (userCubit.Login(user)) {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => Screen,
                    ),
                  );
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Invalid Data'),),);
                }
              }
            }
          else if(txt==' Register')
            {
              if (_formKey.currentState!.validate()) {
                if (userCubit.register(user)) {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => Screen,
                    ),
                  );
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Invalid Data'),),);
                }
              }
            }
          else
            {
              Navigator.push(context,
                MaterialPageRoute(
                  builder:(context)=>Screen,
                ),
              );
            }
        },
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [icon,
            Text(txt,
              style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}

