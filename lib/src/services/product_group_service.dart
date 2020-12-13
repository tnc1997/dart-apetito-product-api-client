import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/market_vertical.dart';
import 'package:apetito_product_api_client/src/models/meal_categorisation.dart';
import 'package:apetito_product_api_client/src/models/product_group.dart';
import 'package:apetito_product_api_client/src/models/product_group_market_vertical.dart';
import 'package:apetito_product_api_client/src/models/product_group_meal_categorisation.dart';
import 'package:apetito_product_api_client/src/models/product_group_ranking.dart';
import 'package:apetito_product_api_client/src/models/ranking.dart';

class ProductGroupService {
  final ApetitoProductApiClientContext _context;

  ProductGroupService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the product groups.
  Future<List<ProductGroup>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }

  /// Gets the product group that matches an id.
  Future<ProductGroup> getById(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return ProductGroup.fromJson(json.decode(response.body));
  }

  /// Gets all the market verticals of the product group that matches an id.
  Future<List<MarketVertical>> getByIdMarketVerticals(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id/marketverticals'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MarketVertical.fromJson(e))
        .toList();
  }

  /// Gets all the meal categorisations of the product group that matches an id.
  Future<List<MealCategorisation>> getByIdMealCategorisations(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id/mealcategorisations'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MealCategorisation.fromJson(e))
        .toList();
  }

  /// Gets all the product group market vertical information of the product that matches an id.
  Future<List<ProductGroupMarketVertical>> getByIdProductGroupMarketVerticals(
      int id) async {
    final response = await _context.client.get(
      Uri.https(
          authority, '$path/productgroups/$id/productgroupmarketverticals'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroupMarketVertical.fromJson(e))
        .toList();
  }

  /// Gets all the product group meal categorisation information of the product that matches an id.
  Future<List<ProductGroupMealCategorisation>>
      getByIdProductGroupMealCategorisations(int id) async {
    final response = await _context.client.get(
      Uri.https(
          authority, '$path/productgroups/$id/productgroupmealcategorisations'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroupMealCategorisation.fromJson(e))
        .toList();
  }

  /// Gets all the product group ranking information of the product that matches an id.
  Future<List<ProductGroupRanking>> getByIdProductGroupRankings(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id/productgrouprankings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroupRanking.fromJson(e))
        .toList();
  }

  /// Gets all the rankings of the product group that matches an id.
  Future<List<Ranking>> getByIdRankings(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id/rankings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Ranking.fromJson(e))
        .toList();
  }
}
