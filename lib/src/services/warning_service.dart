import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:apetito_product_api_client/src/models/product_warning.dart';
import 'package:apetito_product_api_client/src/models/warning.dart';

class WarningService {
  final ApetitoProductApiClientContext _context;

  WarningService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the warnings.
  Future<List<Warning>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/warnings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Warning.fromJson(e))
        .toList();
  }

  /// Gets the warning that matches an id.
  Future<Warning> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/warnings/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Warning.fromJson(json.decode(response.body));
  }

  /// Gets all the product warning information of the warning that matches an id.
  Future<List<ProductWarning>> getByIdProductWarnings(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/warnings/$id/productwarnings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductWarning.fromJson(e))
        .toList();
  }

  /// Gets all the products of the warning that matches an id.
  Future<List<Product>> getByIdProducts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/warnings/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
