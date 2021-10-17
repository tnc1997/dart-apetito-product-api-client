import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/product.dart';
import '../models/serving_type.dart';

class ServingTypeService {
  ServingTypeService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets all the products of the serving type that matches an id.
  Future<List<Product>> getProductsByServingTypeId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/servingtypes/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }

  /// Gets the serving type that matches an id.
  Future<ServingType> getServingTypeById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/servingtypes/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return ServingType.fromJson(json.decode(response.body));
  }

  /// Gets all the serving types.
  Future<List<ServingType>> getServingTypes() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/servingtypes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ServingType.fromJson(e))
        .toList();
  }
}
