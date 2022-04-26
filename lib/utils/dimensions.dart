import 'package:get/get.dart';

class Dimensions {
  //844 é a tela padrao do iphone 12 - com isso dividimos pelas alturas que queriamos
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  //dynamic height - padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  //dynamic width - padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;

  //font size
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;
  static double font40 = screenHeight / 21.1;

  //radius - 884 / 15
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  //icon size
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  //list view size - width is 390 when 390 / 120
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  //dimensions on popular food_detail - tela 844
  static double popularFoodImgSize = screenHeight / 2.41;

  //bottom height 844(tela iphone - 12 / 120)
  static double bottomHeightBar = screenHeight / 7.03;

  //Splash Screen dimensions
  static double splashImg = screenHeight / 3.38;
}
