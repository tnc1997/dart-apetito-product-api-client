import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/nutrition.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:apetito_product_api_client/src/models/product_nutrition.dart';

class NutritionService {
  final ApetitoProductApiClientContext _context;

  NutritionService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the nutritions.
  Future<List<Nutrition>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nutritions'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Nutrition.fromJson(e))
        .toList();
  }

  /// Gets the nutrition that matches an id.
  Future<Nutrition> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nutritions/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Nutrition.fromJson(json.decode(response.body));
  }

  /// Gets all the product nutrition information of the nutrition that matches an id.
  Future<List<ProductNutrition>> getByIdProductNutritions(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nutritions/$id/productnutritions'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductNutrition.fromJson(e))
        .toList();
  }

  /// Gets all the products of the nutrition that matches an id.
  Future<List<Product>> getByIdProducts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nutritions/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
