import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/market_vertical.dart';
import '../models/product_group.dart';
import '../models/product_group_market_vertical.dart';

class MarketVerticalService {
  MarketVerticalService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the market vertical that matches an id.
  Future<MarketVertical> getMarketVerticalById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/marketverticals/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return MarketVertical.fromJson(json.decode(response.body));
  }

  /// Gets all the market verticals.
  Future<List<MarketVertical>> getMarketVerticals() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/marketverticals'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MarketVertical.fromJson(e))
        .toList();
  }

  /// Gets all the product group market vertical information of the market vertical that matches an id.
  Future<List<ProductGroupMarketVertical>>
      getProductGroupMarketVerticalsByMarketVerticalId(String id) async {
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
  Future<List<ProductGroup>> getProductGroupsByMarketVerticalId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/marketverticals/$id/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }
}
