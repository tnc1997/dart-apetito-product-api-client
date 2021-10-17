import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/meal_categorisation.dart';
import '../models/product_group.dart';
import '../models/product_group_meal_categorisation.dart';

class MealCategorisationService {
  MealCategorisationService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets the meal categorisation that matches an id.
  Future<MealCategorisation> getMealCategorisationById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealcategorisations/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return MealCategorisation.fromJson(json.decode(response.body));
  }

  /// Gets all the meal categorisations.
  Future<List<MealCategorisation>> getMealCategorisations() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealcategorisations'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MealCategorisation.fromJson(e))
        .toList();
  }

  /// Gets all the product group meal categorisation information of the meal categorisation that matches an id.
  Future<List<ProductGroupMealCategorisation>>
      getProductGroupMealCategorisationsByMealCategorisationId(
          String id) async {
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
  Future<List<ProductGroup>> getProductGroupsByMealCategorisationId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/mealcategorisations/$id/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }
}
