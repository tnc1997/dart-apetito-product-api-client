import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/allergen.dart';
import '../models/channel.dart';
import '../models/diet.dart';
import '../models/free_from.dart';
import '../models/made_without.dart';
import '../models/meal_type.dart';
import '../models/microwave_stage.dart';
import '../models/node.dart';
import '../models/nutrition.dart';
import '../models/precautionary_allergen_statement.dart';
import '../models/product.dart';
import '../models/product_allergen.dart';
import '../models/product_diet.dart';
import '../models/product_free_from.dart';
import '../models/product_group.dart';
import '../models/product_made_without.dart';
import '../models/product_meal_type.dart';
import '../models/product_microwave_stage.dart';
import '../models/product_nutrition.dart';
import '../models/product_precautionary_allergen_statement.dart';
import '../models/product_warning.dart';
import '../models/warning.dart';

class ProductService {
  ProductService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets all the allergens of the product that matches an id.
  Future<List<Allergen>> getAllergensByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/allergens'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Allergen.fromJson(e))
        .toList();
  }

  /// Gets all the channels of the product that matches an id.
  Future<List<Channel>> getChannelsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/channels'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Channel.fromJson(e))
        .toList();
  }

  /// Gets all the diets of the product that matches an id.
  Future<List<Diet>> getDietsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/diets'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Diet.fromJson(e))
        .toList();
  }

  /// Gets all the free froms of the product that matches an id.
  Future<List<FreeFrom>> getFreeFromsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/freefroms'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => FreeFrom.fromJson(e))
        .toList();
  }

  /// Gets all the made withouts of the product that matches an id.
  Future<List<MadeWithout>> getMadeWithoutsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/madewithouts'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MadeWithout.fromJson(e))
        .toList();
  }

  /// Gets all the meal types of the product that matches an id.
  Future<List<MealType>> getMealTypesByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/mealtypes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MealType.fromJson(e))
        .toList();
  }

  /// Gets all the microwave stages of the product that matches an id.
  Future<List<MicrowaveStage>> getMicrowaveStagesByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/microwavestages'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MicrowaveStage.fromJson(e))
        .toList();
  }

  /// Gets all the nodes of the product that matches an id.
  Future<List<Node>> getNodesByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/nodes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Node.fromJson(e))
        .toList();
  }

  /// Gets all the nutritions of the product that matches an id.
  Future<List<Nutrition>> getNutritionsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/nutritions'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Nutrition.fromJson(e))
        .toList();
  }

  /// Gets all the precautionary allergen statements of the product that matches an id.
  Future<List<PrecautionaryAllergenStatement>>
      getPrecautionaryAllergenStatementsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(
          authority, '$path/products/$id/precautionaryallergenstatements'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => PrecautionaryAllergenStatement.fromJson(e))
        .toList();
  }

  /// Gets all the product allergen information of the product that matches an id.
  Future<List<ProductAllergen>> getProductAllergensByProductId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productallergens'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductAllergen.fromJson(e))
        .toList();
  }

  /// Gets the product that matches a code.
  Future<Product> getProductByCode(String code) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/code/$code'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Product.fromJson(json.decode(response.body));
  }

  /// Gets the product that matches an id.
  Future<Product> getProductById(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Product.fromJson(json.decode(response.body));
  }

  /// Gets all the product diet information of the product that matches an id.
  Future<List<ProductDiet>> getProductDietsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productdiets'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductDiet.fromJson(e))
        .toList();
  }

  /// Gets all the product free from information of the product that matches an id.
  Future<List<ProductFreeFrom>> getProductFreeFromsByProductId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productfreefroms'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductFreeFrom.fromJson(e))
        .toList();
  }

  /// Gets all the product groups of the product that matches an id.
  Future<List<ProductGroup>> getProductGroupsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }

  /// Gets all the product made without information of the product that matches an id.
  Future<List<ProductMadeWithout>> getProductMadeWithoutsByProductId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productmadewithouts'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMadeWithout.fromJson(e))
        .toList();
  }

  /// Gets all the product meal type information of the product that matches an id.
  Future<List<ProductMealType>> getProductMealTypesByProductId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productmealtypes'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductMealType.fromJson(e))
        .toList();
  }

  /// Gets all the product microwave stage information of the product that matches an id.
  Future<List<ProductMicrowaveStage>> getProductMicrowaveStagesByProductId(
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
  Future<List<ProductNutrition>> getProductNutritionsByProductId(
      String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productnutritions'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductNutrition.fromJson(e))
        .toList();
  }

  /// Gets all the product precautionary allergen statement information of the product that matches an id.
  Future<List<ProductPrecautionaryAllergenStatement>>
      getProductPrecautionaryAllergenStatementsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority,
          '$path/products/$id/productprecautionaryallergenstatements'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductPrecautionaryAllergenStatement.fromJson(e))
        .toList();
  }

  /// Gets all the product warning information of the product that matches an id.
  Future<List<ProductWarning>> getProductWarningsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/productwarnings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductWarning.fromJson(e))
        .toList();
  }

  /// Gets all the products.
  Future<List<Product>> getProducts({String? query, int? limit}) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '$path/products',
        {
          if (query != null) 'query': query.toString(),
          if (limit != null) 'limit': limit.toString(),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }

  /// Gets all the warnings of the product that matches an id.
  Future<List<Warning>> getWarningsByProductId(String id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/products/$id/warnings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Warning.fromJson(e))
        .toList();
  }
}
