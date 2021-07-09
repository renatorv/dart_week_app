import 'package:dw3_pizza_delivery_app/components/pizza_delivery_button.dart';
import 'package:dw3_pizza_delivery_app/components/pizza_delivery_input.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    PizzaDeliveryInput(
                      label: 'E-mail',
                      validator: (String value) {
                        if (value == null || value.isBlank || !value.isEmail) {
                          return 'E-mail inválido!!';
                        }
                        return null;
                      },
                    ),
                    Obx(() => PizzaDeliveryInput(
                          validator: (String value) {
                            if (value.length < 6) {
                              return 'Senha deve conter no mínimo 6 caracteres!';
                            }
                            return null;
                          },
                          label: 'Senha',
                          suffixIcon: Icon(
                            FontAwesome.key,
                          ),
                          suffixIconOPressed: controller.showHidePassword,
                          obscureText: controller.obscureText,
                        )),
                    SizedBox(height: 20),
                    PizzaDeliveryButton(
                      onPressed: () => controller.login(null, null) ,
                      width: Get.mediaQuery.size.width * .8,
                      height: 50,
                      buttonColor: Get.theme.primaryColor,
                      label: 'Salvar',
                      labelSize: 20,
                      labelColor: Colors.white,
                    ),
                    SizedBox(height: 60),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )
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
