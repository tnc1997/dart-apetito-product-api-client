# apetito Product API Client

A client for accessing the apetito Product API.

Please note that the apetito Product API Client is unofficial and not endorsed by apetito.

## Usage

A simple usage example:

```dart
import 'package:apetito_product_api_client/apetito_product_api_client.dart';
import 'package:oauth2/oauth2.dart';

Future<void> main() async {
  final client = await clientCredentialsGrant(
    Uri.https(
      'AUTHORITY',
      'PATH',
    ),
    'CLIENT_ID',
    'CLIENT_SECRET',
    scopes: [
      'SCOPE',
    ],
  );

  final api = ApetitoProductApiClient(
    client: client,
  );

  for (var product in await api.products.get()) {
    print(product);
  }

  client.close();
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/tnc1997/dart-apetito-product-api-client/issues
