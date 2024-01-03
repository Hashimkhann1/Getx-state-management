import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpract/getx/example_two_getx.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

  double opicatyG = 0.4;
  ExampleTwoGetx exampleTwoGetx = Get.put(ExampleTwoGetx());

  @override
  Widget build(BuildContext context) {
    // print("Build Check >>>>>>>>>>>>>>>>>>>>>>");
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X"),
      ),
      body: Column(
        children: [
          Obx(() => Slider(value: exampleTwoGetx.opicatyG.value, onChanged: (val) {
            exampleTwoGetx.setOpicatyG(val);
          }),),
          const SizedBox(height: 20,),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.46,
            height: 100,
            color: Colors.teal.withOpacity(exampleTwoGetx.opicatyG.value),
            child: const Text("1",style: TextStyle(fontSize: 30),),
          ),),
          const SizedBox(width: 20,),
          Obx(() => Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.46,
            height: 100,
            color: Colors.deepPurple.withOpacity(exampleTwoGetx.opicatyG.value),
            child: const Text("2",style: TextStyle(fontSize: 30),),
          ))
        ],
      )
        ],
      ),
    );
  }
}
