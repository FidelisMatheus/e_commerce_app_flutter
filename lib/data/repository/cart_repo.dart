import 'dart:convert';

import 'package:e_commerce_app/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/cart_model.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;

  CartRepo({required this.sharedPreferences});

  List<String> cart = [];
  void addToCartList(List<CartModel> cartList) {
    cart = [];
    /**
     * converts objects to string because sharedpreferences only accepts strings.
     */
    cartList.forEach((element) {
      return cart.add(jsonEncode(element));
    });

    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
    //print(sharedPreferences.getStringList(AppConstants.CART_LIST));
    getCartList();
  }

  List<CartModel> getCartList() {
    List<String> carts = [];

    if (sharedPreferences.containsKey(AppConstants.CART_LIST)) {
      carts = sharedPreferences.getStringList(AppConstants.CART_LIST)!;
      print("inside getCartList " + carts.toString());
    }

    List<CartModel> cartList = [];

    /**
     * List<Object> list = [
     *  "object1",
     *  "object2",
     *  "object3",
     * ...
     * ]
     */

    carts.forEach((element) => CartModel.fromJson(jsonDecode(element)));

    return cartList;
  }
}
