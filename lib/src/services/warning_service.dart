import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/product.dart';
import '../models/product_warning.dart';
import '../models/warning.dart';

class WarningService {
  WarningService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets all the product warning information of the warning that matches an id.
  Future<List<ProductWarning>> getProductWarningsByWarningId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/warnings/$id/productwarnings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductWarning.fromJson(e))
        .toList();
  }

  /// Gets all the products of the warning that matches an id.
  Future<List<Product>> getProductsByWarningId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/warnings/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }

  /// Gets the warning that matches an id.
  Future<Warning> getWarningById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/warnings/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Warning.fromJson(json.decode(response.body));
  }

  /// Gets all the warnings.
  Future<List<Warning>> getWarnings() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/warnings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Warning.fromJson(e))
        .toList();
  }
}
