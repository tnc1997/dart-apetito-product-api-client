import 'package:apetito_product_api_client/apetito_product_api_client.dart';
import 'package:http/http.dart';
import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:test/test.dart';

void main() {
  const allergenId = '53';
  const channelId = 23535;
  const dietId = '395';
  const freeFromId = '53';
  const madeWithoutId = '62';
  const marketVerticalId = '95';
  const mealCategorisationId = '299';
  const mealTypeId = '113';
  const microwaveStageId = '1';
  const nodeId = 27131;
  const nutritionId = '1';
  const precautionaryAllergenStatementId = '53';
  const productGroupId = 9249;
  const productCode = '324100';
  const productId = '324';
  const rankingId = 'breakfast';
  const servingTypeId = '160';
  const warningId = '158';

  late ApetitoProductApiClient api;
  late Client client;

  group(
    'extensions',
    () {
      group(
        'ResponseExtensions',
        () {
          test(
            'isSuccessStatusCode',
            () {
              expect(Response('', 200).isSuccessStatusCode, isTrue);
              expect(Response('', 204).isSuccessStatusCode, isTrue);
              expect(Response('', 404).isSuccessStatusCode, isFalse);
              expect(Response('', 500).isSuccessStatusCode, isFalse);
            },
          );
        },
      );
    },
  );

  group(
    'services',
    () {
      group(
        'AllergenService',
        () {
          test(
            'getAllergenById',
            () async {
              await expectLater(
                api.allergenService.getAllergenById(allergenId),
                completes,
              );
            },
          );

          test(
            'getAllergens',
            () async {
              await expectLater(
                api.allergenService.getAllergens(),
                completes,
              );
            },
          );

          test(
            'getProductAllergensByAllergenId',
            () async {
              await expectLater(
                api.allergenService.getProductAllergensByAllergenId(allergenId),
                completes,
              );
            },
          );

          test(
            'getProductsByAllergenId',
            () async {
              await expectLater(
                api.allergenService.getProductsByAllergenId(allergenId),
                completes,
              );
            },
          );
        },
      );

      group(
        'ChannelService',
        () {
          test(
            'getChannelById',
            () async {
              await expectLater(
                api.channelService.getChannelById(channelId),
                completes,
              );
            },
          );

          test(
            'getChannels',
            () async {
              await expectLater(
                api.channelService.getChannels(),
                completes,
              );
            },
          );

          test(
            'getNodesByChannelId',
            () async {
              await expectLater(
                api.channelService.getNodesByChannelId(channelId),
                completes,
              );
            },
          );

          test(
            'getProductsByChannelId',
            () async {
              await expectLater(
                api.channelService.getProductsByChannelId(channelId),
                completes,
              );
            },
          );
        },
      );

      group(
        'DietService',
        () {
          test(
            'getDietById',
            () async {
              await expectLater(
                api.dietService.getDietById(dietId),
                completes,
              );
            },
          );

          test(
            'getDiets',
            () async {
              await expectLater(
                api.dietService.getDiets(),
                completes,
              );
            },
          );

          test(
            'getProductDietsByDietId',
            () async {
              await expectLater(
                api.dietService.getProductDietsByDietId(dietId),
                completes,
              );
            },
          );

          test(
            'getProductsByDietId',
            () async {
              await expectLater(
                api.dietService.getProductsByDietId(dietId),
                completes,
              );
            },
          );
        },
      );

      group(
        'FreeFromService',
        () {
          test(
            'getFreeFromById',
            () async {
              await expectLater(
                api.freeFromService.getFreeFromById(freeFromId),
                completes,
              );
            },
          );

          test(
            'getFreeFroms',
            () async {
              await expectLater(
                api.freeFromService.getFreeFroms(),
                completes,
              );
            },
          );

          test(
            'getProductFreeFromsByFreeFromId',
            () async {
              await expectLater(
                api.freeFromService.getProductFreeFromsByFreeFromId(freeFromId),
                completes,
              );
            },
          );

          test(
            'getProductsByFreeFromId',
            () async {
              await expectLater(
                api.freeFromService.getProductsByFreeFromId(freeFromId),
                completes,
              );
            },
          );
        },
      );

      group(
        'MadeWithoutService',
        () {
          test(
            'getMadeWithoutById',
            () async {
              await expectLater(
                api.madeWithoutService.getMadeWithoutById(madeWithoutId),
                completes,
              );
            },
          );

          test(
            'getMadeWithouts',
            () async {
              await expectLater(
                api.madeWithoutService.getMadeWithouts(),
                completes,
              );
            },
          );

          test(
            'getProductMadeWithoutsByMadeWithoutId',
            () async {
              await expectLater(
                api.madeWithoutService
                    .getProductMadeWithoutsByMadeWithoutId(madeWithoutId),
                completes,
              );
            },
          );

          test(
            'getProductsByMadeWithoutId',
            () async {
              await expectLater(
                api.madeWithoutService
                    .getProductMadeWithoutsByMadeWithoutId(madeWithoutId),
                completes,
              );
            },
          );
        },
      );

      group(
        'MarketVerticalService',
        () {
          test(
            'getMarketVerticalById',
            () async {
              await expectLater(
                api.marketVerticalService
                    .getMarketVerticalById(marketVerticalId),
                completes,
              );
            },
          );

          test(
            'getMarketVerticals',
            () async {
              await expectLater(
                api.marketVerticalService.getMarketVerticals(),
                completes,
              );
            },
          );

          test(
            'getProductGroupMarketVerticalsByMarketVerticalId',
            () async {
              await expectLater(
                api.marketVerticalService
                    .getProductGroupMarketVerticalsByMarketVerticalId(
                        marketVerticalId),
                completes,
              );
            },
          );

          test(
            'getProductGroupsByMarketVerticalId',
            () async {
              await expectLater(
                api.marketVerticalService
                    .getProductGroupsByMarketVerticalId(marketVerticalId),
                completes,
              );
            },
          );
        },
      );

      group(
        'MealCategorisationService',
        () {
          test(
            'getMealCategorisationById',
            () async {
              await expectLater(
                api.mealCategorisationService
                    .getMealCategorisationById(mealCategorisationId),
                completes,
              );
            },
          );

          test(
            'getMealCategorisations',
            () async {
              await expectLater(
                api.mealCategorisationService.getMealCategorisations(),
                completes,
              );
            },
          );

          test(
            'getProductGroupMealCategorisationsByMealCategorisationId',
            () async {
              await expectLater(
                api.mealCategorisationService
                    .getProductGroupMealCategorisationsByMealCategorisationId(
                        mealCategorisationId),
                completes,
              );
            },
          );

          test(
            'getProductGroupsByMealCategorisationId',
            () async {
              await expectLater(
                api.mealCategorisationService
                    .getProductGroupsByMealCategorisationId(
                        mealCategorisationId),
                completes,
              );
            },
          );
        },
      );

      group(
        'MealTypeService',
        () {
          test(
            'getMealTypeById',
            () async {
              await expectLater(
                api.mealTypeService.getMealTypeById(mealTypeId),
                completes,
              );
            },
          );

          test(
            'getMealTypes',
            () async {
              await expectLater(
                api.mealTypeService.getMealTypes(),
                completes,
              );
            },
          );

          test(
            'getProductMealTypesByMealTypeId',
            () async {
              await expectLater(
                api.mealTypeService.getProductMealTypesByMealTypeId(mealTypeId),
                completes,
              );
            },
          );

          test(
            'getProductsByMealTypeId',
            () async {
              await expectLater(
                api.mealTypeService.getProductsByMealTypeId(mealTypeId),
                completes,
              );
            },
          );
        },
      );

      group(
        'MicrowaveStageService',
        () {
          test(
            'getMicrowaveStageById',
            () async {
              await expectLater(
                api.microwaveStageService
                    .getMicrowaveStageById(microwaveStageId),
                completes,
              );
            },
          );

          test(
            'getMicrowaveStages',
            () async {
              await expectLater(
                api.microwaveStageService.getMicrowaveStages(),
                completes,
              );
            },
          );

          test(
            'getProductMicrowaveStagesByMicrowaveStageId',
            () async {
              await expectLater(
                api.microwaveStageService
                    .getProductMicrowaveStagesByMicrowaveStageId(
                        microwaveStageId),
                completes,
              );
            },
          );

          test(
            'getProductsByMicrowaveStageId',
            () async {
              await expectLater(
                api.microwaveStageService
                    .getProductsByMicrowaveStageId(microwaveStageId),
                completes,
              );
            },
          );
        },
      );

      group(
        'NodeService',
        () {
          test(
            'getChannelsByNodeId',
            () async {
              await expectLater(
                api.nodeService.getChannelsByNodeId(nodeId),
                completes,
              );
            },
          );

          test(
            'getNodeById',
            () async {
              await expectLater(
                api.nodeService.getNodeById(nodeId),
                completes,
              );
            },
          );

          test(
            'getNodes',
            () async {
              await expectLater(
                api.nodeService.getNodes(),
                completes,
              );
            },
          );

          test(
            'getProductsByNodeId',
            () async {
              await expectLater(
                api.nodeService.getProductsByNodeId(nodeId),
                completes,
              );
            },
          );
        },
      );

      group(
        'NutritionService',
        () {
          test(
            'getNutritionById',
            () async {
              await expectLater(
                api.nutritionService.getNutritionById(nutritionId),
                completes,
              );
            },
          );

          test(
            'getNutritions',
            () async {
              await expectLater(
                api.nutritionService.getNutritions(),
                completes,
              );
            },
          );

          test(
            'getProductNutritionsByNutritionId',
            () async {
              await expectLater(
                api.nutritionService
                    .getProductNutritionsByNutritionId(nutritionId),
                completes,
              );
            },
          );

          test(
            'getProductsByNutritionId',
            () async {
              await expectLater(
                api.nutritionService.getProductsByNutritionId(nutritionId),
                completes,
              );
            },
          );
        },
      );

      group(
        'PrecautionaryAllergenStatementService',
        () {
          test(
            'getPrecautionaryAllergenStatementById',
            () async {
              await expectLater(
                api.precautionaryAllergenStatementService
                    .getPrecautionaryAllergenStatementById(
                        precautionaryAllergenStatementId),
                completes,
              );
            },
          );

          test(
            'getPrecautionaryAllergenStatements',
            () async {
              await expectLater(
                api.precautionaryAllergenStatementService
                    .getPrecautionaryAllergenStatements(),
                completes,
              );
            },
          );

          test(
            'getProductPrecautionaryAllergenStatementsByPrecautionaryAllergenStatementId',
            () async {
              await expectLater(
                api.precautionaryAllergenStatementService
                    .getProductPrecautionaryAllergenStatementsByPrecautionaryAllergenStatementId(
                        precautionaryAllergenStatementId),
                completes,
              );
            },
          );

          test(
            'getProductsByPrecautionaryAllergenStatementId',
            () async {
              await expectLater(
                api.precautionaryAllergenStatementService
                    .getProductsByPrecautionaryAllergenStatementId(
                        precautionaryAllergenStatementId),
                completes,
              );
            },
          );
        },
      );

      group(
        'ProductGroupService',
        () {
          test(
            'getMarketVerticalsByProductGroupId',
            () async {
              await expectLater(
                api.productGroupService
                    .getMarketVerticalsByProductGroupId(productGroupId),
                completes,
              );
            },
          );

          test(
            'getMealCategorisationsByProductGroupId',
            () async {
              await expectLater(
                api.productGroupService
                    .getMealCategorisationsByProductGroupId(productGroupId),
                completes,
              );
            },
          );

          test(
            'getProductGroupById',
            () async {
              await expectLater(
                api.productGroupService.getProductGroupById(productGroupId),
                completes,
              );
            },
          );

          test(
            'getProductGroupMarketVerticalsByProductGroupId',
            () async {
              await expectLater(
                api.productGroupService
                    .getProductGroupMarketVerticalsByProductGroupId(
                        productGroupId),
                completes,
              );
            },
          );

          test(
            'getProductGroupMealCategorisationsByProductGroupId',
            () async {
              await expectLater(
                api.productGroupService
                    .getProductGroupMealCategorisationsByProductGroupId(
                        productGroupId),
                completes,
              );
            },
          );

          test(
            'getProductGroupRankingsByProductGroupId',
            () async {
              await expectLater(
                api.productGroupService
                    .getProductGroupRankingsByProductGroupId(productGroupId),
                completes,
              );
            },
          );

          test(
            'getProductGroups',
            () async {
              await expectLater(
                api.productGroupService.getProductGroups(),
                completes,
              );
            },
          );

          test(
            'getRankingsByProductGroupId',
            () async {
              await expectLater(
                api.productGroupService
                    .getRankingsByProductGroupId(productGroupId),
                completes,
              );
            },
          );
        },
      );

      group(
        'ProductService',
        () {
          test(
            'getAllergensByProductId',
            () async {
              await expectLater(
                api.productService.getAllergensByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getChannelsByProductId',
            () async {
              await expectLater(
                api.productService.getChannelsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getDietsByProductId',
            () async {
              await expectLater(
                api.productService.getDietsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getFreeFromsByProductId',
            () async {
              await expectLater(
                api.productService.getFreeFromsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getMadeWithoutsByProductId',
            () async {
              await expectLater(
                api.productService.getMadeWithoutsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getMealTypesByProductId',
            () async {
              await expectLater(
                api.productService.getMealTypesByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getMicrowaveStagesByProductId',
            () async {
              await expectLater(
                api.productService.getMicrowaveStagesByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getNodesByProductId',
            () async {
              await expectLater(
                api.productService.getNodesByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getNutritionsByProductId',
            () async {
              await expectLater(
                api.productService.getNutritionsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getPrecautionaryAllergenStatementsByProductId',
            () async {
              await expectLater(
                api.productService
                    .getPrecautionaryAllergenStatementsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProductAllergensByProductId',
            () async {
              await expectLater(
                api.productService.getProductAllergensByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProductByCode',
            () async {
              await expectLater(
                api.productService.getProductByCode(productCode),
                completes,
              );
            },
          );

          test(
            'getProductById',
            () async {
              await expectLater(
                api.productService.getProductById(productId),
                completes,
              );
            },
          );

          test(
            'getProductDietsByProductId',
            () async {
              await expectLater(
                api.productService.getProductDietsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProductFreeFromsByProductId',
            () async {
              await expectLater(
                api.productService.getProductFreeFromsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProductGroupsByProductId',
            () async {
              await expectLater(
                api.productService.getProductGroupsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProductMadeWithoutsByProductId',
            () async {
              await expectLater(
                api.productService.getProductMadeWithoutsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProductMealTypesByProductId',
            () async {
              await expectLater(
                api.productService.getProductMealTypesByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProductMicrowaveStagesByProductId',
            () async {
              await expectLater(
                api.productService
                    .getProductMicrowaveStagesByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProductNutritionsByProductId',
            () async {
              await expectLater(
                api.productService.getProductNutritionsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProductPrecautionaryAllergenStatementsByProductId',
            () async {
              await expectLater(
                api.productService
                    .getProductPrecautionaryAllergenStatementsByProductId(
                        productId),
                completes,
              );
            },
          );

          test(
            'getProductWarningsByProductId',
            () async {
              await expectLater(
                api.productService.getProductWarningsByProductId(productId),
                completes,
              );
            },
          );

          test(
            'getProducts',
            () async {
              await expectLater(
                api.productService.getProducts(),
                completes,
              );
            },
          );

          test(
            'getWarningsByProductId',
            () async {
              await expectLater(
                api.productService.getWarningsByProductId(productId),
                completes,
              );
            },
          );
        },
      );

      group(
        'RankingService',
        () {
          test(
            'getProductGroupRankingsByRankingId',
            () async {
              await expectLater(
                api.rankingService
                    .getProductGroupRankingsByRankingId(rankingId),
                completes,
              );
            },
          );

          test(
            'getProductGroupsByRankingId',
            () async {
              await expectLater(
                api.rankingService.getProductGroupsByRankingId(rankingId),
                completes,
              );
            },
          );

          test(
            'getRankingById',
            () async {
              await expectLater(
                api.rankingService.getRankingById(rankingId),
                completes,
              );
            },
          );

          test(
            'getRankings',
            () async {
              await expectLater(
                api.rankingService.getRankings(),
                completes,
              );
            },
          );
        },
      );

      group(
        'ServingTypeService',
        () {
          test(
            'getProductsByServingTypeId',
            () async {
              await expectLater(
                api.servingTypeService
                    .getProductsByServingTypeId(servingTypeId),
                completes,
              );
            },
          );

          test(
            'getServingTypeById',
            () async {
              await expectLater(
                api.servingTypeService.getServingTypeById(servingTypeId),
                completes,
              );
            },
          );

          test(
            'getServingTypes',
            () async {
              await expectLater(
                api.servingTypeService.getServingTypes(),
                completes,
              );
            },
          );
        },
      );

      group(
        'WarningService',
        () {
          test(
            'getProductWarningsByWarningId',
            () async {
              await expectLater(
                api.warningService.getProductWarningsByWarningId(warningId),
                completes,
              );
            },
          );

          test(
            'getProductsByWarningId',
            () async {
              await expectLater(
                api.warningService.getProductsByWarningId(warningId),
                completes,
              );
            },
          );

          test(
            'getWarningById',
            () async {
              await expectLater(
                api.warningService.getWarningById(warningId),
                completes,
              );
            },
          );

          test(
            'getWarnings',
            () async {
              await expectLater(
                api.warningService.getWarnings(),
                completes,
              );
            },
          );
        },
      );
    },
    timeout: Timeout(
      Duration(
        minutes: 1,
      ),
    ),
  );

  setUp(
    () {
      api = ApetitoProductApiClient(
        client: client,
      );
    },
  );

  setUpAll(
    () async {
      client = await oauth2.clientCredentialsGrant(
        Uri.https('identity.apetito.co.uk', '/connect/token'),
        'client_id',
        'client_secret',
        scopes: ['Products.Read.All'],
      );
    },
  );

  tearDownAll(
    () {
      client.close();
    },
  );
}
