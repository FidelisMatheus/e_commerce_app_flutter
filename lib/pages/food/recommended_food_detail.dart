import 'package:e_commerce_app/routes/route_helper.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getInitial());
                  },
                  child: AppIcon(icon: Icons.clear),
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: "Chinese Side",
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Dimensions.radius20,
                    ),
                    topRight: Radius.circular(
                      Dimensions.radius20,
                    ),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food01.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac dui nulla. Mauris ullamcorper gravida mi, non commodo dolor finibus sit amet. Sed justo ante, blandit nec tempor sit amet, dignissim ut purus. Phasellus nisl lectus, viverra tincidunt accumsan ac, viverra quis sem. Integer eget nisi posuere, maximus tellus a, pharetra mi. Vivamus placerat orci non erat consequat facilisis. Aenean pellentesque ac velit vel euismod. Nam a lobortis enim, et scelerisque odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac dui nulla. Mauris ullamcorper gravida mi, non commodo dolor finibus sit amet. Sed justo ante, blandit nec tempor sit amet, dignissim ut purus. Phasellus nisl lectus, viverra tincidunt accumsan ac, viverra quis sem. Integer eget nisi posuere, maximus tellus a, pharetra mi. Vivamus placerat orci non erat consequat facilisis. Aenean pellentesque ac velit vel euismod. Nam a lobortis enim, et scelerisque odio.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac dui nulla. Mauris ullamcorper gravida mi, non commodo dolor finibus sit amet. Sed justo ante, blandit nec tempor sit amet, dignissim ut purus. Phasellus nisl lectus, viverra tincidunt accumsan ac, viverra quis sem. Integer eget nisi posuere, maximus tellus a, pharetra mi. Vivamus placerat orci non erat consequat facilisis. Aenean pellentesque ac velit vel euismod. Nam a lobortis enim, et scelerisque odio.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac dui nulla. Mauris ullamcorper gravida mi, non commodo dolor finibus sit amet. Sed justo ante, blandit nec tempor sit amet, dignissim ut purus. Phasellus nisl lectus, viverra tincidunt accumsan ac, viverra quis sem. Integer eget nisi posuere, maximus tellus a, pharetra mi. Vivamus placerat orci non erat consequat facilisis. Aenean pellentesque ac velit vel euismod. Nam a lobortis enim, et scelerisque odio.',
                  ),
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: '\$12.88 ' + ' X ' + ' 0 ',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //fav container
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: BigText(
                    text: '\$10 | Add to cart',
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
