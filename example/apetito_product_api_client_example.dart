import 'package:apetito_product_api_client/apetito_product_api_client.dart';
import 'package:http/http.dart';

Future<void> main() async {
  final client = _AuthenticatedClient();

  final api = ApetitoProductApiClient(
    client: client,
  );

  for (var product in await api.products.get()) {
    print(product);
  }

  client.close();
}

class _AuthenticatedClient extends BaseClient {
  @override
  Future<StreamedResponse> send(BaseRequest request) {
    final _ = Request(
      request.method,
      request.url,
    );

    _.headers['Authorization'] = 'Bearer ACCESS_TOKEN';

    return _.send();
  }
}
