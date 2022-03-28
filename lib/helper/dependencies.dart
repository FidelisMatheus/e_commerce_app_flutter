import 'package:e_commerce_app/controllers/popular_product_controller.dart';
import 'package:e_commerce_app/data/api/api_client.dart';
import 'package:get/get.dart';

import '../data/repository/popular_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: 'https://www.dbestach.com'));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
