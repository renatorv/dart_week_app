import 'package:flutter/material.dart';

class PizzaDeliveryInput extends StatelessWidget {

  final String label;

  const PizzaDeliveryInput({
    Key? key,
    this.label,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return TextFormField(
         decoration: InputDecoration(
           labelText: this.label
         ),
       );
  }
}
