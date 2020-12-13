import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/meal_type.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:apetito_product_api_client/src/models/product_meal_type.dart';

class MealTypeService {
  final ApetitoProductApiClientContext _context;

  MealTypeService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the meal types.
  Future<List<MealType>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealtypes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MealType.fromJson(e))
        .toList();
  }

  /// Gets the meal type that matches an id.
  Future<MealType> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealtypes/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return MealType.fromJson(json.decode(response.body));
  }

  /// Gets all the product meal type information of the meal type that matches an id.
  Future<List<ProductMealType>> getByIdProductMealTypes(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealtypes/$id/productmealtypes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMealType.fromJson(e))
        .toList();
  }

  /// Gets all the products of the meal type that matches an id.
  Future<List<Product>> getByIdProducts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealtypes/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
