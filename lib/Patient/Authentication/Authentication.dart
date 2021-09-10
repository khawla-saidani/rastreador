import 'package:flutter/cupertino.dart';
import 'package:rastreador/Patient/Authentication/Login.dart';
import 'package:rastreador/Patient/Authentication/register.dart';

class Authentication extends StatefulWidget{
  @override
  _AuthenticatonState createState() => _AuthenticatonState();
}

class _AuthenticatonState extends State <Authentication>  {

  bool isToggle = false;
  void toggleScreen(){
    setState(() {
      isToggle = !isToggle;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(isToggle){
      return Register() ;
    } else {
      return Login();
    }
  }

}