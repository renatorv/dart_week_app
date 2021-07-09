import 'package:dw3_pizza_delivery_app/app/helpers/rest_client.dart';
import 'package:dw3_pizza_delivery_app/app/models/user_model.dart';

class UserRepository {
  final RestClient restClient;

  UserRepository(this.restClient);

  Future<UserModel> login(String email, String password) async {
    final response = await restClient.post(
      '/user/auth',
      {'email': email, 'password': password},
      decoder: (resp) {
        // conversão do modelo
        return UserModel.fromMap(resp);
      },
    );

    // o Getconnect é error safed => não sobe a exceção, ele encapsula o erro
    // se der alguma excessão, ele retorna como um hasError
    if(response.hasError){
      String message = 'Erro ao autenticar usuário';

      if(response.statusCode == 403){
        message = 'Uusuário ou senha inválidos';
      }

      throw RestClientException(message);
    }

    return response.body;
  }
}
