import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/diet.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:apetito_product_api_client/src/models/product_diet.dart';

class DietService {
  final ApetitoProductApiClientContext _context;

  DietService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the diets.
  Future<List<Diet>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/diets'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Diet.fromJson(e))
        .toList();
  }

  /// Gets the diet that matches an id.
  Future<Diet> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/diets/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Diet.fromJson(json.decode(response.body));
  }

  /// Gets all the product diet information of the diet that matches an id.
  Future<List<ProductDiet>> getByIdProductDiets(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/diets/$id/productdiets'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductDiet.fromJson(e))
        .toList();
  }

  /// Gets all the products of the diet that matches an id.
  Future<List<Product>> getByIdProducts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/diets/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
