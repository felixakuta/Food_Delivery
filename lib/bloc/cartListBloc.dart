import 'dart:async';
import 'package:get_me_food/bloc/provider.dart';
import 'package:get_me_food/models/foodItem.dart';
import 'package:rxdart/rxdart.dart';
import 'package:bloc/bloc.dart';

class CartListBloc extends BlocBase {
  CartListBloc() : super(null);

  var _listController = BehaviorSubject<List<FoodItem>>.seeded([]);
  CartProvider provider = CartProvider();

  Stream<List<FoodItem>> get listStream => _listController.stream;
  Sink<List<FoodItem>> get listSink => _listController.sink;

  addToList(FoodItem foodItem) {
    listSink.add(provider.addToList(foodItem));
  }

  removeFromList(FoodItem foodItem) {
    listSink.add(provider.removeFromList(foodItem));
  }

  void dispose() {
    _listController.close();
  }
}
