import 'package:http/http.dart';

import 'services/allergen_service.dart';
import 'services/channel_service.dart';
import 'services/diet_service.dart';
import 'services/free_from_service.dart';
import 'services/made_without_service.dart';
import 'services/market_vertical_service.dart';
import 'services/meal_categorisation_service.dart';
import 'services/meal_type_service.dart';
import 'services/microwave_stage_service.dart';
import 'services/node_service.dart';
import 'services/nutrition_service.dart';
import 'services/precautionary_allergen_statement_service.dart';
import 'services/product_group_service.dart';
import 'services/product_service.dart';
import 'services/ranking_service.dart';
import 'services/serving_type_service.dart';
import 'services/warning_service.dart';

class ApetitoProductApiClient {
  ApetitoProductApiClient({
    required Client client,
  }) : _context = ApetitoProductApiClientContext(
          client: client,
        );

  final ApetitoProductApiClientContext _context;

  AllergenService get allergenService => AllergenService(
        context: _context,
      );

  ChannelService get channelService => ChannelService(
        context: _context,
      );

  DietService get dietService => DietService(
        context: _context,
      );

  FreeFromService get freeFromService => FreeFromService(
        context: _context,
      );

  MadeWithoutService get madeWithoutService => MadeWithoutService(
        context: _context,
      );

  MarketVerticalService get marketVerticalService => MarketVerticalService(
        context: _context,
      );

  MealCategorisationService get mealCategorisationService =>
      MealCategorisationService(
        context: _context,
      );

  MealTypeService get mealTypeService => MealTypeService(
        context: _context,
      );

  MicrowaveStageService get microwaveStageService => MicrowaveStageService(
        context: _context,
      );

  NodeService get nodeService => NodeService(
        context: _context,
      );

  NutritionService get nutritionService => NutritionService(
        context: _context,
      );

  PrecautionaryAllergenStatementService
      get precautionaryAllergenStatementService =>
          PrecautionaryAllergenStatementService(
            context: _context,
          );

  ProductGroupService get productGroupService => ProductGroupService(
        context: _context,
      );

  ProductService get productService => ProductService(
        context: _context,
      );

  RankingService get rankingService => RankingService(
        context: _context,
      );

  ServingTypeService get servingTypeService => ServingTypeService(
        context: _context,
      );

  WarningService get warningService => WarningService(
        context: _context,
      );
}

class ApetitoProductApiClientContext {
  final Client client;

  ApetitoProductApiClientContext({
    required this.client,
  });
}
