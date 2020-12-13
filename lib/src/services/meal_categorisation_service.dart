import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/meal_categorisation.dart';
import 'package:apetito_product_api_client/src/models/product_group.dart';
import 'package:apetito_product_api_client/src/models/product_group_meal_categorisation.dart';

class MealCategorisationService {
  final ApetitoProductApiClientContext _context;

  MealCategorisationService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the meal categorisations.
  Future<List<MealCategorisation>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealcategorisations'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MealCategorisation.fromJson(e))
        .toList();
  }

  /// Gets the meal categorisation that matches an id.
  Future<MealCategorisation> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealcategorisations/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return MealCategorisation.fromJson(json.decode(response.body));
  }

  /// Gets all the product group meal categorisation information of the meal categorisation that matches an id.
  Future<List<ProductGroupMealCategorisation>>
      getByIdProductGroupMealCategorisations(String id) async {
    final response = await _context.client.get(
      Uri.https(authority,
          '$path/mealcategorisations/$id/productgroupmealcategorisations'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroupMealCategorisation.fromJson(e))
        .toList();
  }

  /// Gets all the product groups of the meal categorisation that matches an id.
  Future<List<ProductGroup>> getByIdProductGroups(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealcategorisations/$id/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }
}
