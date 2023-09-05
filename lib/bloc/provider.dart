import 'package:get_me_food/models/foodItem.dart';

class CartProvider {
  List<FoodItem> foodItems = [];

  List<FoodItem> addToList(FoodItem foodItem) {
    foodItems.add(foodItem);
    return foodItems;
  }

  List<FoodItem> removeFromList(FoodItem menuItem) {
    foodItems.remove(menuItem);
    return foodItems;
  }
}
