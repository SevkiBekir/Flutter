/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-20 18:24:13
 * @modify date 2018-10-20 18:24:13
 * @desc Login Screen Class
*/
import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final Bloc bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailTextWidget(bloc),
          passwordTextWidget(bloc),
          Container(margin: EdgeInsets.only(top: 20.0)),
          loginButtonWidget(bloc),
        ],
      ),
    );
  }

  Widget emailTextWidget(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "abc@example.com",
            labelText: "Email",
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordTextWidget(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changePassword,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "****",
              labelText: "Password",
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget loginButtonWidget(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.loginIsValid,
        builder: (context, snapshot) {
          return RaisedButton(
            onPressed:
                snapshot.hasData ? bloc.login:null,
            child: new Text("Login"),
            disabledColor: Colors.grey,
            color: Colors.lightBlue,
          );
        });
  }

  
}
