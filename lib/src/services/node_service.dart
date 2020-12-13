import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/channel.dart';
import 'package:apetito_product_api_client/src/models/node.dart';
import 'package:apetito_product_api_client/src/models/product.dart';

class NodeService {
  final ApetitoProductApiClientContext _context;

  NodeService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the nodes.
  Future<List<Node>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/catalogcategories'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Node.fromJson(e))
        .toList();
  }

  /// Gets the node that matches an id.
  Future<Node> getById(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/catalogcategories/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Node.fromJson(json.decode(response.body));
  }

  /// Gets all the channels of the node that matches an id.
  Future<List<Channel>> getByIdChannels(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/catalogcategories/$id/catalogs'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Channel.fromJson(e))
        .toList();
  }

  /// Gets all the products of the node that matches an id.
  Future<List<Product>> getByIdProducts(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/catalogcategories/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
