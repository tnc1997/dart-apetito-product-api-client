import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/market_vertical.dart';
import 'package:apetito_product_api_client/src/models/product_group.dart';
import 'package:apetito_product_api_client/src/models/product_group_market_vertical.dart';

class MarketVerticalService {
  final ApetitoProductApiClientContext _context;

  MarketVerticalService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the market verticals.
  Future<List<MarketVertical>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/marketverticals'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MarketVertical.fromJson(e))
        .toList();
  }

  /// Gets the market vertical that matches an id.
  Future<MarketVertical> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/marketverticals/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return MarketVertical.fromJson(json.decode(response.body));
  }

  /// Gets all the product group market vertical information of the market vertical that matches an id.
  Future<List<ProductGroupMarketVertical>> getByIdProductGroupMarketVerticals(
      String id) async {
    final response = await _context.client.get(
      Uri.https(
          authority, '$path/marketverticals/$id/productgroupmarketverticals'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroupMarketVertical.fromJson(e))
        .toList();
  }

  /// Gets all the product groups of the market vertical that matches an id.
  Future<List<ProductGroup>> getByIdProductGroups(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/marketverticals/$id/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }
}
