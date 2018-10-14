/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-14 13:28:20
 * @modify date 2018-10-14 13:28:20
 * @desc login screen class
*/
import 'package:flutter/material.dart';
import '../mixins/validate_mixins.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidateMixin {
  final formGlobalKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formGlobalKey,
        child: Column(
          children: <Widget>[
            emailTextFormField(),
            passwordTextFormField(),
            submitButtonField(),
          ],
        ),
      ),
    );
  }

  Widget emailTextFormField() {
    return new TextFormField(
      validator: emailValidation,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "hint@example.com",
        labelText: "Email Address",
        errorStyle: TextStyle(color: Colors.red),
      ),
      onSaved: (value) {
        email = value;
      },
    );
  }

  Widget passwordTextFormField() {
    return new TextFormField(
      validator: passwordValidation,
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "123",
        labelText: "Password",
        errorStyle: TextStyle(color: Colors.red),
      ),
      onSaved: (value) {
        password = value;
      },
    );
  }

  Widget submitButtonField() {
    return new RaisedButton(
      onPressed: submitButtonFieldOnPressed,
      child: new Text("Login"),
    );
  }

  void submitButtonFieldOnPressed() {
    if (formGlobalKey.currentState.validate()) {
      formGlobalKey.currentState.save();
      print("The data is ready to send!");
      print("Email:$email");
      print("Password:$password");
    }
  }
}
