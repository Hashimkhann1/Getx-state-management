import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpract/getx/favourite_example_getx.dart';

class FavouruteItemExample extends StatefulWidget {
  const FavouruteItemExample({super.key});

  @override
  State<FavouruteItemExample> createState() => _FavouruteItemExampleState();
}

class _FavouruteItemExampleState extends State<FavouruteItemExample> {

  FavouriteExampleGetx favouriteExampleGetx = Get.put(FavouriteExampleGetx());

  @override
  Widget build(BuildContext context) {
    print("check build here >>>>>>>>>>>>>>");
    return Scaffold(
      appBar: AppBar(
        title: Text("get X"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: 20,
                  itemBuilder: (context , index) {
                return Card(
                  elevation: 4,
                  margin: EdgeInsets.all(10),
                  child: ListTile(onTap: () {
                    favouriteExampleGetx.addOrRemoveFavItems(index);
                  },
                    title: Text('Item' +" "+ index.toString()),
                    trailing: Obx(() => favouriteExampleGetx.favItems.contains(index) ? Icon(Icons.favorite,color: Colors.red,) : Icon(null))
                  ),
                );
              })
          )
        ],
      ),
    );
  }
}
