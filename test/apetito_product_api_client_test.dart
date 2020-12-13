import 'package:apetito_product_api_client/apetito_product_api_client.dart';
import 'package:http/http.dart';
import 'package:oauth2/oauth2.dart' show clientCredentialsGrant;
import 'package:test/test.dart';

void main() {
  const channelId = 0;
  const dietId = '';
  const freeFromId = '';
  const madeWithoutId = '';
  const marketVerticalId = '';
  const mealCategorisationId = '';
  const mealTypeId = '';
  const microwaveStageId = '';
  const nodeId = 0;
  const nutritionId = '';
  const productGroupId = 0;
  const productId = '';
  const rankingId = '';

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
        'ChannelService',
        () {
          test(
            'get',
            () async {
              await expectLater(
                api.channels.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.channels.getById(channelId),
                completes,
              );
            },
          );

          test(
            'getByIdNodes',
            () async {
              await expectLater(
                api.channels.getByIdNodes(channelId),
                completes,
              );
            },
          );

          test(
            'getByIdProducts',
            () async {
              await expectLater(
                api.channels.getByIdProducts(channelId),
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
            'get',
            () async {
              await expectLater(
                api.diets.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.diets.getById(dietId),
                completes,
              );
            },
          );

          test(
            'getByIdProductDiets',
            () async {
              await expectLater(
                api.diets.getByIdProductDiets(dietId),
                completes,
              );
            },
          );

          test(
            'getByIdProducts',
            () async {
              await expectLater(
                api.diets.getByIdProducts(dietId),
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
            'get',
            () async {
              await expectLater(
                api.freeFroms.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.freeFroms.getById(freeFromId),
                completes,
              );
            },
          );

          test(
            'getByIdProductFreeFroms',
            () async {
              await expectLater(
                api.freeFroms.getByIdProductFreeFroms(freeFromId),
                completes,
              );
            },
          );

          test(
            'getByIdProducts',
            () async {
              await expectLater(
                api.freeFroms.getByIdProducts(freeFromId),
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
            'get',
            () async {
              await expectLater(
                api.madeWithouts.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.madeWithouts.getById(madeWithoutId),
                completes,
              );
            },
          );

          test(
            'getByIdProductMadeWithouts',
            () async {
              await expectLater(
                api.madeWithouts.getByIdProductMadeWithouts(madeWithoutId),
                completes,
              );
            },
          );

          test(
            'getByIdProducts',
            () async {
              await expectLater(
                api.madeWithouts.getByIdProducts(madeWithoutId),
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
            'get',
            () async {
              await expectLater(
                api.marketVerticals.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.marketVerticals.getById(marketVerticalId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroupMarketVerticals',
            () async {
              await expectLater(
                api.marketVerticals
                    .getByIdProductGroupMarketVerticals(marketVerticalId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroups',
            () async {
              await expectLater(
                api.marketVerticals.getByIdProductGroups(marketVerticalId),
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
            'get',
            () async {
              await expectLater(
                api.mealCategorisations.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.mealCategorisations.getById(mealCategorisationId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroupMealCategorisations',
            () async {
              await expectLater(
                api.mealCategorisations.getByIdProductGroupMealCategorisations(
                    mealCategorisationId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroups',
            () async {
              await expectLater(
                api.mealCategorisations
                    .getByIdProductGroups(mealCategorisationId),
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
            'get',
            () async {
              await expectLater(
                api.mealTypes.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.mealTypes.getById(mealTypeId),
                completes,
              );
            },
          );

          test(
            'getByIdProductMealTypes',
            () async {
              await expectLater(
                api.mealTypes.getByIdProductMealTypes(mealTypeId),
                completes,
              );
            },
          );

          test(
            'getByIdProducts',
            () async {
              await expectLater(
                api.mealTypes.getByIdProducts(mealTypeId),
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
            'get',
            () async {
              await expectLater(
                api.microwaveStages.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.microwaveStages.getById(microwaveStageId),
                completes,
              );
            },
          );

          test(
            'getByIdProductMicrowaveStages',
            () async {
              await expectLater(
                api.microwaveStages
                    .getByIdProductMicrowaveStages(microwaveStageId),
                completes,
              );
            },
          );

          test(
            'getByIdProducts',
            () async {
              await expectLater(
                api.microwaveStages.getByIdProducts(microwaveStageId),
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
            'get',
            () async {
              await expectLater(
                api.nodes.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.nodes.getById(nodeId),
                completes,
              );
            },
          );

          test(
            'getByIdChannels',
            () async {
              await expectLater(
                api.nodes.getByIdChannels(nodeId),
                completes,
              );
            },
          );

          test(
            'getByIdProducts',
            () async {
              await expectLater(
                api.nodes.getByIdProducts(nodeId),
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
            'get',
            () async {
              await expectLater(
                api.nutritions.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.nutritions.getById(nutritionId),
                completes,
              );
            },
          );

          test(
            'getByIdProductNutritions',
            () async {
              await expectLater(
                api.nutritions.getByIdProductNutritions(nutritionId),
                completes,
              );
            },
          );

          test(
            'getByIdProducts',
            () async {
              await expectLater(
                api.nutritions.getByIdProducts(nutritionId),
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
            'get',
            () async {
              await expectLater(
                api.productGroups.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.productGroups.getById(productGroupId),
                completes,
              );
            },
          );

          test(
            'getByIdMarketVerticals',
            () async {
              await expectLater(
                api.productGroups.getByIdMarketVerticals(productGroupId),
                completes,
              );
            },
          );

          test(
            'getByIdMealCategorisations',
            () async {
              await expectLater(
                api.productGroups.getByIdMealCategorisations(productGroupId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroupMarketVerticals',
            () async {
              await expectLater(
                api.productGroups
                    .getByIdProductGroupMarketVerticals(productGroupId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroupMealCategorisations',
            () async {
              await expectLater(
                api.productGroups
                    .getByIdProductGroupMealCategorisations(productGroupId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroupRankings',
            () async {
              await expectLater(
                api.productGroups.getByIdProductGroupRankings(productGroupId),
                completes,
              );
            },
          );

          test(
            'getByIdRankings',
            () async {
              await expectLater(
                api.productGroups.getByIdRankings(productGroupId),
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
            'get',
            () async {
              await expectLater(
                api.products.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.products.getById(productId),
                completes,
              );
            },
          );

          test(
            'getByIdChannels',
            () async {
              await expectLater(
                api.products.getByIdChannels(productId),
                completes,
              );
            },
          );

          test(
            'getByIdDiets',
            () async {
              await expectLater(
                api.products.getByIdDiets(productId),
                completes,
              );
            },
          );

          test(
            'getByIdFreeFroms',
            () async {
              await expectLater(
                api.products.getByIdFreeFroms(productId),
                completes,
              );
            },
          );

          test(
            'getByIdMadeWithouts',
            () async {
              await expectLater(
                api.products.getByIdMadeWithouts(productId),
                completes,
              );
            },
          );

          test(
            'getByIdMealTypes',
            () async {
              await expectLater(
                api.products.getByIdMealTypes(productId),
                completes,
              );
            },
          );

          test(
            'getByIdMicrowaveStages',
            () async {
              await expectLater(
                api.products.getByIdMicrowaveStages(productId),
                completes,
              );
            },
          );

          test(
            'getByIdNodes',
            () async {
              await expectLater(
                api.products.getByIdNodes(productId),
                completes,
              );
            },
          );

          test(
            'getByIdNutritions',
            () async {
              await expectLater(
                api.products.getByIdNutritions(productId),
                completes,
              );
            },
          );

          test(
            'getByIdProductDiets',
            () async {
              await expectLater(
                api.products.getByIdProductDiets(productId),
                completes,
              );
            },
          );

          test(
            'getByIdProductFreeFroms',
            () async {
              await expectLater(
                api.products.getByIdProductFreeFroms(productId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroups',
            () async {
              await expectLater(
                api.products.getByIdProductGroups(productId),
                completes,
              );
            },
          );

          test(
            'getByIdProductMadeWithouts',
            () async {
              await expectLater(
                api.products.getByIdProductMadeWithouts(productId),
                completes,
              );
            },
          );

          test(
            'getByIdProductMealTypes',
            () async {
              await expectLater(
                api.products.getByIdProductMealTypes(productId),
                completes,
              );
            },
          );

          test(
            'getByIdProductMicrowaveStages',
            () async {
              await expectLater(
                api.products.getByIdProductMicrowaveStages(productId),
                completes,
              );
            },
          );

          test(
            'getByIdProductNutritions',
            () async {
              await expectLater(
                api.products.getByIdProductNutritions(productId),
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
            'get',
            () async {
              await expectLater(
                api.rankings.get(),
                completes,
              );
            },
          );

          test(
            'getById',
            () async {
              await expectLater(
                api.rankings.getById(rankingId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroupRankings',
            () async {
              await expectLater(
                api.rankings.getByIdProductGroupRankings(rankingId),
                completes,
              );
            },
          );

          test(
            'getByIdProductGroups',
            () async {
              await expectLater(
                api.rankings.getByIdProductGroups(rankingId),
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
      client = await clientCredentialsGrant(
        Uri.https(
          'AUTHORITY',
          'PATH',
        ),
        'CLIENT_ID',
        'CLIENT_SECRET',
        scopes: [
          'SCOPE',
        ],
      );
    },
  );
}
