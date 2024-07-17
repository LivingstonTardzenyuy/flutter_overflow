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

          Obx(() =>    Container(
            margin: const EdgeInsets.all(20),
            width: double.maxFinite,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF80dad0),
            ),
            child: Center(
              child: Center(
                child: Text(
                  Get.find<TapController>().total.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),),

          SizedBox(height: 15,),
          Obx(() => Center(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.orange,
              child: Center(
                child: Text(
                  // Get.find<TapController>().de
                  "Y Value ${Get.find<TapController>().y.toString()}",
                  style: TextStyle(
                      fontSize: 30
                  ),
                  // style: T,
                ),
              ),
            ),
          ),
          ),

          SizedBox(height: 15,),
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



          SizedBox(height: 15,),
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
                  "Y Value Increase",
                  style: TextStyle(
                      fontSize: 30
                  ),
                  // style: T,
                ),
              ),
            ),
          ),


          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Get.find<TapController>().addXandY();
            },
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.orange,
              child: Center(
                child: Text(
                  "X + Y",
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
