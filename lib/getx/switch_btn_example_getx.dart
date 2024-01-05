
import 'package:get/get.dart';

class SwitchBtnExampleGetx extends GetxController{

  RxBool noticication = false.obs;

  setNotification(bool value) {
    noticication.value = value;
    // print(noticication.value);
  }

}