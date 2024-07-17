import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getstatemanagement/controller/controller.dart';


class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios), color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.orange,
            child: Center(
              child: Text(
                "X value ${controller.x.toString()}",
                style: TextStyle(
                  fontSize: 30
                ),
                // style: T,
              ),
            ),
          ),



          InkWell(
            onTap: (){
              Get.find<TapController>().increaseY();
            },
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.orange,
              child: Center(
                child: Text(
                  // Get.find<TapController>().de
                  style: TextStyle(
                      fontSize: 30
                  ),
                  // style: T,
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
