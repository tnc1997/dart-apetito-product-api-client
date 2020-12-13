import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/microwave_stage.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:apetito_product_api_client/src/models/product_microwave_stage.dart';

class MicrowaveStageService {
  final ApetitoProductApiClientContext _context;

  MicrowaveStageService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the microwave stages.
  Future<List<MicrowaveStage>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/microwavestages'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MicrowaveStage.fromJson(e))
        .toList();
  }

  /// Gets the microwave stage that matches an id.
  Future<MicrowaveStage> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/microwavestages/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return MicrowaveStage.fromJson(json.decode(response.body));
  }

  /// Gets all the product microwave stage information of the microwave stage that matches an id.
  Future<List<ProductMicrowaveStage>> getByIdProductMicrowaveStages(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/microwavestages/$id/productmicrowavestages'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMicrowaveStage.fromJson(e))
        .toList();
  }

  /// Gets all the products of the microwave stage that matches an id.
  Future<List<Product>> getByIdProducts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/microwavestages/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
