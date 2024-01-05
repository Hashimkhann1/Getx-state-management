


import 'package:get/get.dart';

class FavouriteExampleGetx extends GetxController {

  RxList favItems = [].obs;

  addOrRemoveFavItems(int index) {
    favItems.contains(index) ? favItems.remove(index) : favItems.add(index);
  }
  
}