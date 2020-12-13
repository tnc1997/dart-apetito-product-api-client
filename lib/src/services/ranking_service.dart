import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/product_group.dart';
import 'package:apetito_product_api_client/src/models/product_group_ranking.dart';
import 'package:apetito_product_api_client/src/models/ranking.dart';

class RankingService {
  final ApetitoProductApiClientContext _context;

  RankingService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the rankings.
  Future<List<Ranking>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/rankings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Ranking.fromJson(e))
        .toList();
  }

  /// Gets the ranking that matches an id.
  Future<Ranking> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/rankings/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Ranking.fromJson(json.decode(response.body));
  }

  /// Gets all the product group ranking information of the ranking that matches an id.
  Future<List<ProductGroupRanking>> getByIdProductGroupRankings(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/rankings/$id/productgrouprankings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroupRanking.fromJson(e))
        .toList();
  }

  /// Gets all the product groups of the ranking that matches an id.
  Future<List<ProductGroup>> getByIdProductGroups(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/rankings/$id/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }
}
