import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/microwave_stage.dart';
import '../models/product.dart';
import '../models/product_microwave_stage.dart';

class MicrowaveStageService {
  MicrowaveStageService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the microwave stage that matches an id.
  Future<MicrowaveStage> getMicrowaveStageById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/microwavestages/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return MicrowaveStage.fromJson(json.decode(response.body));
  }

  /// Gets all the microwave stages.
  Future<List<MicrowaveStage>> getMicrowaveStages() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/microwavestages'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MicrowaveStage.fromJson(e))
        .toList();
  }

  /// Gets all the product microwave stage information of the microwave stage that matches an id.
  Future<List<ProductMicrowaveStage>>
      getProductMicrowaveStagesByMicrowaveStageId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/microwavestages/$id/productmicrowavestages'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMicrowaveStage.fromJson(e))
        .toList();
  }

  /// Gets all the products of the microwave stage that matches an id.
  Future<List<Product>> getProductsByMicrowaveStageId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/microwavestages/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
