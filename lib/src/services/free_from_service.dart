import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/free_from.dart';
import '../models/product.dart';
import '../models/product_free_from.dart';

class FreeFromService {
  FreeFromService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the free from that matches an id.
  Future<FreeFrom> getFreeFromById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/freefroms/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return FreeFrom.fromJson(json.decode(response.body));
  }

  /// Gets all the free froms.
  Future<List<FreeFrom>> getFreeFroms() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/freefroms'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => FreeFrom.fromJson(e))
        .toList();
  }

  /// Gets all the product free from information of the free from that matches an id.
  Future<List<ProductFreeFrom>> getProductFreeFromsByFreeFromId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/freefroms/$id/productfreefroms'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductFreeFrom.fromJson(e))
        .toList();
  }

  /// Gets all the products of the free from that matches an id.
  Future<List<Product>> getProductsByFreeFromId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/freefroms/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
