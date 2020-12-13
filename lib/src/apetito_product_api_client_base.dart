import 'package:apetito_product_api_client/src/services/channel_service.dart';
import 'package:apetito_product_api_client/src/services/diet_service.dart';
import 'package:apetito_product_api_client/src/services/free_from_service.dart';
import 'package:apetito_product_api_client/src/services/made_without_service.dart';
import 'package:apetito_product_api_client/src/services/market_vertical_service.dart';
import 'package:apetito_product_api_client/src/services/meal_categorisation_service.dart';
import 'package:apetito_product_api_client/src/services/meal_type_service.dart';
import 'package:apetito_product_api_client/src/services/microwave_stage_service.dart';
import 'package:apetito_product_api_client/src/services/node_service.dart';
import 'package:apetito_product_api_client/src/services/nutrition_service.dart';
import 'package:apetito_product_api_client/src/services/product_group_service.dart';
import 'package:apetito_product_api_client/src/services/product_service.dart';
import 'package:apetito_product_api_client/src/services/ranking_service.dart';
import 'package:http/http.dart';

class ApetitoProductApiClient {
  final ApetitoProductApiClientContext _context;

  ApetitoProductApiClient({
    required Client client,
  }) : _context = ApetitoProductApiClientContext(
          client: client,
        );

  ChannelService get channels => ChannelService(
        context: _context,
      );

  DietService get diets => DietService(
        context: _context,
      );

  FreeFromService get freeFroms => FreeFromService(
        context: _context,
      );

  MadeWithoutService get madeWithouts => MadeWithoutService(
        context: _context,
      );

  MarketVerticalService get marketVerticals => MarketVerticalService(
        context: _context,
      );

  MealCategorisationService get mealCategorisations =>
      MealCategorisationService(
        context: _context,
      );

  MealTypeService get mealTypes => MealTypeService(
        context: _context,
      );

  MicrowaveStageService get microwaveStages => MicrowaveStageService(
        context: _context,
      );

  NodeService get nodes => NodeService(
        context: _context,
      );

  NutritionService get nutritions => NutritionService(
        context: _context,
      );

  ProductGroupService get productGroups => ProductGroupService(
        context: _context,
      );

  ProductService get products => ProductService(
        context: _context,
      );

  RankingService get rankings => RankingService(
        context: _context,
      );
}

class ApetitoProductApiClientContext {
  final Client client;

  ApetitoProductApiClientContext({
    required this.client,
  });
}
