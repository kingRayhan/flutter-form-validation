import 'package:flutter/material.dart';

class App_FormField extends StatefulWidget {
  String label;
  IconData icon;
  String placeholder;
  bool isPasswordField;

  Function validator;
  Function onSave;

  App_FormField({
    this.label,
    this.placeholder,
    this.isPasswordField = false,
    this.icon,
    this.validator,
    this.onSave,
  });

  @override
  _App_FormFieldState createState() => _App_FormFieldState();
}

class _App_FormFieldState extends State<App_FormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPasswordField,
      keyboardAppearance: Brightness.dark,
      validator: widget.validator,
      onSaved: widget.onSave,
      decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.placeholder,
          icon: widget.icon != null ? Icon(widget.icon) : null),
    );
  }
}
