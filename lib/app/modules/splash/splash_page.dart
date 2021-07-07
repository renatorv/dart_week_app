import 'package:dw3_pizza_delivery_app/app/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  // o GetView, prove uma variável do tipo com o nome controller automaticamente
  // assim não é preciso criar a variável manualmente
  // var controller = Get.find<SplashController>();

  static const String ROUTE_PAGE = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SplashPage')),
      body: Container(
        child: Obx(
          () => Center(
            child: Text(
              controller.logged.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
