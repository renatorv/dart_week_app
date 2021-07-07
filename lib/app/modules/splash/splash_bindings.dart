// classe que é executa antes da rota ser carregada
// assim deve-se carregar, AQUI, as dependências que essa tela precisa
// no gerenciador de depências do GET (Sevice Locator)

import 'package:dw3_pizza_delivery_app/app/modules/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {

    //
    // lazyPut :: carregamento preguisoço
    // a instância está registrada no GERENCIADOR DO GET porém ainda não está carregada
    // ela vai existir somente quando o Get utilizar ela pela primeira vez
    // 
    // Get.lazyPut(() => SplashController());

    Get.put(SplashController());

  }
}
