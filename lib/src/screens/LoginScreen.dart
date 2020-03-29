import 'package:flutter/material.dart';
import '../widgets/APP_FormField.dart';
import '../mixins/ValidaorMixin.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidatorMixin {
  final formKey = new GlobalKey<FormState>();

  Map<String, String> credential = {
    "email": null,
    "password": null,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            _emailField(),
            _passwordField(),
            new Container(padding: EdgeInsets.only(bottom: 15)), // spacing
            _submitButton(),
          ],
        ),
      ),
    );
  }

  Widget _emailField() {
    return App_FormField(
      label: "Email address",
      placeholder: "Enter your email address",
      icon: Icons.email,
      validator: emailValidator,
      onSave: (String input) {
        credential['email'] = input.trim();
      },
    );
  }

  Widget _passwordField() {
    return App_FormField(
      label: "Password",
      placeholder: "Enter your password",
      isPasswordField: true,
      icon: Icons.lock,
      validator: passwordValidator,
      onSave: (String input) {
        credential['password'] = input;
      },
    );
  }

  Widget _submitButton() {
    return RaisedButton.icon(
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print(credential);
        }
      },
      icon: Icon(Icons.lock_open),
      label: Text("Login"),
      color: Colors.blue,
      textColor: Colors.white,
    );
  }
}
