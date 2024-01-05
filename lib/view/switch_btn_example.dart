import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpract/getx/switch_btn_example_getx.dart';

class SwitchBtnExample extends StatefulWidget {
  const SwitchBtnExample({super.key});

  @override
  State<SwitchBtnExample> createState() => _SwitchBtnExampleState();
}

class _SwitchBtnExampleState extends State<SwitchBtnExample> {

  SwitchBtnExampleGetx switchBtnExampleGetx = Get.put(SwitchBtnExampleGetx());
  // bool switchPos = true;

  @override
  Widget build(BuildContext context) {
    print("Check Build Here >>>>>>>>>>>>>>>");
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Obx(() => Text(switchBtnExampleGetx.noticication.value ? "check Notification" : "Notification",style: TextStyle(fontSize: 20),)),
          Obx(() => Switch(value: switchBtnExampleGetx.noticication.value, onChanged: (val) {
            switchBtnExampleGetx.setNotification(val);
            // print(switchPos);
            // print(val);
          }))
        ],
      ),
    );
  }
}
