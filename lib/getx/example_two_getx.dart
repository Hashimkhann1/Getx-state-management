

import 'package:get/get.dart';

class ExampleTwoGetx extends GetxController{
  RxDouble opicatyG = 0.6.obs;

  setOpicatyG(double value) {
    opicatyG.value = value;
    // print(opicatyG);
  }

}