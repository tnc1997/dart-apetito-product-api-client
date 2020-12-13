import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/channel.dart';
import 'package:apetito_product_api_client/src/models/node.dart';
import 'package:apetito_product_api_client/src/models/product.dart';

class ChannelService {
  final ApetitoProductApiClientContext _context;

  ChannelService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the channels.
  Future<List<Channel>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/catalogs'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Channel.fromJson(e))
        .toList();
  }

  /// Gets the channel that matches an id.
  Future<Channel> getById(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/catalogs/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Channel.fromJson(json.decode(response.body));
  }

  /// Gets all the nodes of the channel that matches an id.
  Future<List<Node>> getByIdNodes(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/catalogs/$id/catalogcategories'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Node.fromJson(e))
        .toList();
  }

  /// Gets all the products of the channel that matches an id.
  Future<List<Product>> getByIdProducts(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/catalogs/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
