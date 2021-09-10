import 'package:flutter/material.dart';
import 'package:rastreador/Caregiver/Authentication/Login.dart';
import '../../main.dart';

class RegistrationDoctor extends StatelessWidget {
  final _pwdController = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  final _confpwdController = TextEditingController();
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          primary: Colors.white,
          textStyle: const TextStyle(fontSize: 20)),
      child: Text("OK"),
      onPressed: (){ Navigator.push(context,
          MaterialPageRoute(builder: (context)=> MyApp()));},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Exit"),
      content: Text("Do you want to exit !"),
      actions: [
        okButton ,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Doctor Account"),
      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child :Padding (
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _fromKey,
              child : Column (
                  //scrossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton( icon:Icon(Icons.home , color:Theme.of(context).primaryColor) ,
                    onPressed: (){Navigator.push(context,
                     MaterialPageRoute(builder: (context)=> MyApp())); },
                    ),
                 TextFormField(
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Doctor first name cannot be empty';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        hintText: 'Put your first name',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child :TextFormField(
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Doctor last name cannot be empty';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        hintText: 'Put your last name',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child :TextFormField(
                        validator: (value){
                          if (value!.isEmpty){
                            return 'Doctor Address cannot be empty';
                          }
                          return null ;
                        },
                        decoration: InputDecoration(
                          labelText: 'Address',
                          hintText: 'Address',
                          border : OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: Icon(Icons.home_work_outlined),
                        ),
                      ),
                    ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child :TextFormField(
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Doctor E-mail cannot be empty';
                      }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Put your E-mail name',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextFormField(
                    obscureText: true,
                    controller: _pwdController,
                    validator: (value){
                      if (value!.isEmpty){
                        return 'Phone number cannot be empty !';
                      }
                        if (value.length < 8){
                        return 'Phone cannot be less than 8 numbers !';
                      }else if (value.length > 8){
                   return 'Phone cannot be upper than 8 numbers !';
                    }
                      return null ;
                    },
                    decoration: InputDecoration(
                        labelText: 'Phone',
                        hintText: 'Enter your phone number',
                        border : OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child :TextFormField(
                        obscureText: true,
                        controller: _pwdController,
                        validator: (value){
                          if (value!.isEmpty){
                            return 'Password cannot be empty !';
                          }else if (value.length < 6){
                            return 'Password must be at least 6 characters long !';
                          }
                          return null ;
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                          border : OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: Icon(Icons.lock_outline),
                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child :TextFormField(
                        obscureText: true
                        ,
                        controller: _confpwdController,
                        validator: (value){
                          if (value != _pwdController.value.text){
                            return 'password do not match !';}
                          return null ;
                        },
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          hintText: 'Confirm Password',
                          border : OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),),
                    SizedBox(height: 20),
                    MaterialButton(
                        onPressed: (){
                          if(_fromKey.currentState!.validate()){

                          }
                        },
                        height: 50,
                       minWidth: double.infinity,
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white ,
                        shape :RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Submit" ,
                          style: TextStyle(fontSize: 15, fontWeight :FontWeight.bold),
                        )
                    ),
                    SizedBox(height: 20),
                    ElevatedButton.icon(
                      label: Text('Exit'),
                      icon: Icon(Icons.exit_to_app),
                      style : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
                      ),
                      onPressed: () {
                        showAlertDialog(context);},
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment : MainAxisAlignment.center ,
                      children : [
                        Text("Already have an account ?"),
                        SizedBox(width: 20),
                        TextButton(onPressed: () {Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> LogIn()));
                        },
                          child: Text("Login"),
                        ),
                              ],  ),
       ], ),
        ),),),),);
  }
}
