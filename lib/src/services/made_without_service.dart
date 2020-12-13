import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/made_without.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:apetito_product_api_client/src/models/product_made_without.dart';

class MadeWithoutService {
  final ApetitoProductApiClientContext _context;

  MadeWithoutService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the made withouts.
  Future<List<MadeWithout>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/madewithouts'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MadeWithout.fromJson(e))
        .toList();
  }

  /// Gets the made without that matches an id.
  Future<MadeWithout> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/madewithouts/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return MadeWithout.fromJson(json.decode(response.body));
  }

  /// Gets all the product made without information of the made without that matches an id.
  Future<List<ProductMadeWithout>> getByIdProductMadeWithouts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/madewithouts/$id/productmadewithouts'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMadeWithout.fromJson(e))
        .toList();
  }

  /// Gets all the products of the made without that matches an id.
  Future<List<Product>> getByIdProducts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/madewithouts/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
