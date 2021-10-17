import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/allergen.dart';
import '../models/product.dart';
import '../models/product_allergen.dart';

class AllergenService {
  AllergenService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the allergen that matches an id.
  Future<Allergen> getAllergenById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/allergens/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Allergen.fromJson(json.decode(response.body));
  }

  /// Gets all the allergens.
  Future<List<Allergen>> getAllergens() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/allergens'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Allergen.fromJson(e))
        .toList();
  }

  /// Gets all the product allergen information of the allergen that matches an id.
  Future<List<ProductAllergen>> getProductAllergensByAllergenId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/allergens/$id/productallergens'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductAllergen.fromJson(e))
        .toList();
  }

  /// Gets all the products of the allergen that matches an id.
  Future<List<Product>> getProductsByAllergenId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/allergens/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
