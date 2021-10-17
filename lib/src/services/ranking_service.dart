import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/product_group.dart';
import '../models/product_group_ranking.dart';
import '../models/ranking.dart';

class RankingService {
  RankingService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets all the product group ranking information of the ranking that matches an id.
  Future<List<ProductGroupRanking>> getProductGroupRankingsByRankingId(
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
  Future<List<ProductGroup>> getProductGroupsByRankingId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/rankings/$id/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }

  /// Gets the ranking that matches an id.id:
  Future<Ranking> getRankingById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/rankings/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Ranking.fromJson(json.decode(response.body));
  }

  /// Gets all the rankings.
  Future<List<Ranking>> getRankings() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/rankings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Ranking.fromJson(e))
        .toList();
  }
}
