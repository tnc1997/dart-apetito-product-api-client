import 'package:apetito_product_api_client/apetito_product_api_client.dart';
import 'package:oauth2/oauth2.dart';

Future<void> main() async {
  final client = await clientCredentialsGrant(
    Uri.https('identity.apetito.co.uk', '/connect/token'),
    'client_id',
    'client_secret',
    scopes: ['Products.Read.All'],
  );

  final api = ApetitoProductApiClient(
    client: client,
  );

  for (var product in await api.productService.getProducts()) {
    print(product);
  }

  client.close();
}
