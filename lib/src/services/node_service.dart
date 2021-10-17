import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/channel.dart';
import '../models/node.dart';
import '../models/product.dart';

class NodeService {
  NodeService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets all the channels of the node that matches an id.
  Future<List<Channel>> getChannelsByNodeId(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nodes/$id/channels'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Channel.fromJson(e))
        .toList();
  }

  /// Gets the node that matches an id.
  Future<Node> getNodeById(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nodes/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Node.fromJson(json.decode(response.body));
  }

  /// Gets all the nodes.
  Future<List<Node>> getNodes() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nodes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Node.fromJson(e))
        .toList();
  }

  /// Gets all the products of the node that matches an id.
  Future<List<Product>> getProductsByNodeId(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/nodes/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
