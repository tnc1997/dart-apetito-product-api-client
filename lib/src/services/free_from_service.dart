import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/free_from.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:apetito_product_api_client/src/models/product_free_from.dart';

class FreeFromService {
  final ApetitoProductApiClientContext _context;

  FreeFromService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the free froms.
  Future<List<FreeFrom>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/freefroms'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => FreeFrom.fromJson(e))
        .toList();
  }

  /// Gets the free from that matches an id.
  Future<FreeFrom> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/freefroms/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return FreeFrom.fromJson(json.decode(response.body));
  }

  /// Gets all the product free from information of the free from that matches an id.
  Future<List<ProductFreeFrom>> getByIdProductFreeFroms(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/freefroms/$id/productfreefroms'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductFreeFrom.fromJson(e))
        .toList();
  }

  /// Gets all the products of the free from that matches an id.
  Future<List<Product>> getByIdProducts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/freefroms/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
