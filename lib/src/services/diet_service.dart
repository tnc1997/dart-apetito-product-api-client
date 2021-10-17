import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/diet.dart';
import '../models/product.dart';
import '../models/product_diet.dart';

class DietService {
  DietService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the diet that matches an id.
  Future<Diet> getDietById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/diets/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Diet.fromJson(json.decode(response.body));
  }

  /// Gets all the diets.
  Future<List<Diet>> getDiets() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/diets'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Diet.fromJson(e))
        .toList();
  }

  /// Gets all the product diet information of the diet that matches an id.
  Future<List<ProductDiet>> getProductDietsByDietId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/diets/$id/productdiets'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductDiet.fromJson(e))
        .toList();
  }

  /// Gets all the products of the diet that matches an id.
  Future<List<Product>> getProductsByDietId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/diets/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
