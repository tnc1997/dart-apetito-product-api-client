import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/nutrition.dart';
import '../models/product.dart';
import '../models/product_nutrition.dart';

class NutritionService {
  NutritionService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the nutrition that matches an id.id:
  Future<Nutrition> getNutritionById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nutritions/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Nutrition.fromJson(json.decode(response.body));
  }

  /// Gets all the nutritions.
  Future<List<Nutrition>> getNutritions() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nutritions'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Nutrition.fromJson(e))
        .toList();
  }

  /// Gets all the product nutrition information of the nutrition that matches an id.
  Future<List<ProductNutrition>> getProductNutritionsByNutritionId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nutritions/$id/productnutritions'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductNutrition.fromJson(e))
        .toList();
  }

  /// Gets all the products of the nutrition that matches an id.
  Future<List<Product>> getProductsByNutritionId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nutritions/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
