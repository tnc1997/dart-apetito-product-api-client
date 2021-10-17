import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/precautionary_allergen_statement.dart';
import '../models/product.dart';
import '../models/product_precautionary_allergen_statement.dart';

class PrecautionaryAllergenStatementService {
  PrecautionaryAllergenStatementService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the precautionary allergen statement that matches an id.
  Future<PrecautionaryAllergenStatement> getPrecautionaryAllergenStatementById(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/precautionaryallergenstatements/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return PrecautionaryAllergenStatement.fromJson(json.decode(response.body));
  }

  /// Gets all the precautionary allergen statements.
  Future<List<PrecautionaryAllergenStatement>>
      getPrecautionaryAllergenStatements() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/precautionaryallergenstatements'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => PrecautionaryAllergenStatement.fromJson(e))
        .toList();
  }

  /// Gets all the product precautionary allergen statement information of the precautionary allergen statement that matches an id.
  Future<List<ProductPrecautionaryAllergenStatement>>
      getProductPrecautionaryAllergenStatementsByPrecautionaryAllergenStatementId(
          String id) async {
    final response = await _context.client.get(
      Uri.https(authority,
          '$path/precautionaryallergenstatements/$id/productprecautionaryallergenstatements'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductPrecautionaryAllergenStatement.fromJson(e))
        .toList();
  }

  /// Gets all the products of the precautionary allergen statement that matches an id.
  Future<List<Product>> getProductsByPrecautionaryAllergenStatementId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(
          authority, '$path/precautionaryallergenstatements/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
