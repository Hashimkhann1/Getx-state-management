import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpract/getx/counter_controller.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X"),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          return Text(controller.counter.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),);
        })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
