import 'package:dw3_pizza_delivery_app/components/pizza_delivery_input.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './login_controller.dart';

class LoginPage extends GetView<LoginController> {
  static const String ROUTE_PAGE = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width:
              Get.mediaQuery.size.width, // MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', width: 250),
              SizedBox(
                child: Column(
                  children: [
                    // PizzaDeliveryInput(label: 'E-mail'),
                    // PizzaDeliveryInput(label: 'Senha'),
                    PizzaDeliveryInput(),
                    PizzaDeliveryInput(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
