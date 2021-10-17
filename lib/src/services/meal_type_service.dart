import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/meal_type.dart';
import '../models/product.dart';
import '../models/product_meal_type.dart';

class MealTypeService {
  MealTypeService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the meal type that matches an id.id:
  Future<MealType> getMealTypeById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealtypes/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return MealType.fromJson(json.decode(response.body));
  }

  /// Gets all the meal types.
  Future<List<MealType>> getMealTypes() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealtypes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MealType.fromJson(e))
        .toList();
  }

  /// Gets all the product meal type information of the meal type that matches an id.
  Future<List<ProductMealType>> getProductMealTypesByMealTypeId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealtypes/$id/productmealtypes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMealType.fromJson(e))
        .toList();
  }

  /// Gets all the products of the meal type that matches an id.
  Future<List<Product>> getProductsByMealTypeId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealtypes/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
