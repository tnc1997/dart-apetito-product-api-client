import 'dart:convert';

import 'package:apetito_product_api_client/src/apetito_product_api_client_base.dart';
import 'package:apetito_product_api_client/src/constants/uri_constants.dart';
import 'package:apetito_product_api_client/src/exceptions/client_exception.dart';
import 'package:apetito_product_api_client/src/models/channel.dart';
import 'package:apetito_product_api_client/src/models/diet.dart';
import 'package:apetito_product_api_client/src/models/free_from.dart';
import 'package:apetito_product_api_client/src/models/made_without.dart';
import 'package:apetito_product_api_client/src/models/meal_type.dart';
import 'package:apetito_product_api_client/src/models/microwave_stage.dart';
import 'package:apetito_product_api_client/src/models/node.dart';
import 'package:apetito_product_api_client/src/models/nutrition.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:apetito_product_api_client/src/models/product_diet.dart';
import 'package:apetito_product_api_client/src/models/product_free_from.dart';
import 'package:apetito_product_api_client/src/models/product_group.dart';
import 'package:apetito_product_api_client/src/models/product_made_without.dart';
import 'package:apetito_product_api_client/src/models/product_meal_type.dart';
import 'package:apetito_product_api_client/src/models/product_microwave_stage.dart';
import 'package:apetito_product_api_client/src/models/product_nutrition.dart';

class ProductService {
  final ApetitoProductApiClientContext _context;

  ProductService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  /// Gets all the products.
  Future<List<Product>> get() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }

  /// Gets the product that matches an id.
  Future<Product> getById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Product.fromJson(json.decode(response.body));
  }

  /// Gets all the channels of the product that matches an id.
  Future<List<Channel>> getByIdChannels(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/catalogs'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Channel.fromJson(e))
        .toList();
  }

  /// Gets all the diets of the product that matches an id.
  Future<List<Diet>> getByIdDiets(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/diets'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Diet.fromJson(e))
        .toList();
  }

  /// Gets all the free froms of the product that matches an id.
  Future<List<FreeFrom>> getByIdFreeFroms(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/freefroms'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => FreeFrom.fromJson(e))
        .toList();
  }

  /// Gets all the made withouts of the product that matches an id.
  Future<List<MadeWithout>> getByIdMadeWithouts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/madewithouts'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MadeWithout.fromJson(e))
        .toList();
  }

  /// Gets all the meal types of the product that matches an id.
  Future<List<MealType>> getByIdMealTypes(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/mealtypes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MealType.fromJson(e))
        .toList();
  }

  /// Gets all the microwave stages of the product that matches an id.
  Future<List<MicrowaveStage>> getByIdMicrowaveStages(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/microwavestages'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MicrowaveStage.fromJson(e))
        .toList();
  }

  /// Gets all the nodes of the product that matches an id.
  Future<List<Node>> getByIdNodes(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/catalogcategories'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Node.fromJson(e))
        .toList();
  }

  /// Gets all the nutritions of the product that matches an id.
  Future<List<Nutrition>> getByIdNutritions(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/nutritions'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Nutrition.fromJson(e))
        .toList();
  }

  /// Gets all the product diet information of the product that matches an id.
  Future<List<ProductDiet>> getByIdProductDiets(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productdiets'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductDiet.fromJson(e))
        .toList();
  }

  /// Gets all the product free from information of the product that matches an id.
  Future<List<ProductFreeFrom>> getByIdProductFreeFroms(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productfreefroms'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductFreeFrom.fromJson(e))
        .toList();
  }

  /// Gets all the product groups of the product that matches an id.
  Future<List<ProductGroup>> getByIdProductGroups(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }

  /// Gets all the product made without information of the product that matches an id.
  Future<List<ProductMadeWithout>> getByIdProductMadeWithouts(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productmadewithouts'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMadeWithout.fromJson(e))
        .toList();
  }

  /// Gets all the product meal type information of the product that matches an id.
  Future<List<ProductMealType>> getByIdProductMealTypes(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productmealtypes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMealType.fromJson(e))
        .toList();
  }

  /// Gets all the product microwave stage information of the product that matches an id.
  Future<List<ProductMicrowaveStage>> getByIdProductMicrowaveStages(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productmicrowavestages'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMicrowaveStage.fromJson(e))
        .toList();
  }

  /// Gets all the product nutrition information of the product that matches an id.
  Future<List<ProductNutrition>> getByIdProductNutritions(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productnutritions'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductNutrition.fromJson(e))
        .toList();
  }
}
