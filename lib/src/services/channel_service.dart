import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/channel.dart';
import '../models/node.dart';
import '../models/product.dart';

class ChannelService {
  ChannelService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the channel that matches an id.
  Future<Channel> getChannelById(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/channels/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Channel.fromJson(json.decode(response.body));
  }

  /// Gets all the channels.
  Future<List<Channel>> getChannels() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/channels'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Channel.fromJson(e))
        .toList();
  }

  /// Gets all the nodes of the channel that matches an id.
  Future<List<Node>> getNodesByChannelId(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/channels/$id/nodes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Node.fromJson(e))
        .toList();
  }

  /// Gets all the products of the channel that matches an id.
  Future<List<Product>> getProductsByChannelId(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/channels/$id/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
