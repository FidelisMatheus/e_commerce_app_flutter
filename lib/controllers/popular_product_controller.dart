import 'package:e_commerce_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = []; //This variable is private
  List<dynamic> get popularProductList =>
      _popularProductList; //Access the private variable

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    //successful
    if (response.statusCode == 200) {
      _popularProductList = [];
      //_popularProductList.addAll();
      update();
    } else {}
  }
}
