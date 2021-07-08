import 'package:flutter/material.dart';

class PizzaDeliveryInput extends StatelessWidget {
  final String label;
  final Icon suffixIcon;
  final Function suffixIconOPressed;
  final bool obscureText;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;

  const PizzaDeliveryInput({
    Key key,
    this.label,
    this.suffixIcon,
    this.suffixIconOPressed,
    this.obscureText = false,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: this.controller,
      decoration: InputDecoration(
        labelText: this.label,
        suffixIcon: this.suffixIcon != null
            ? IconButton(
                onPressed: this.suffixIconOPressed,
                icon: this.suffixIcon,
              )
            : null,
      ),
      obscureText: this.obscureText,
      validator: this.validator,
    );
  }
}
