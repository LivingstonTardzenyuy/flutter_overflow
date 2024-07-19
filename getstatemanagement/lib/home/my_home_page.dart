import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatemanagement/controller/controller.dart';
import 'package:getstatemanagement/screen/first_page.dart';

import '../screen/second_page.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<TapController>(
            builder: (TapController controllerV) {
              return Text(
                controllerV.x.toString(),
              );
            },
          ),

          GestureDetector(
            onTap: () {
              controller.increaseX();
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF80dad0),
              ),
              child: Center(
                child: Text('Tap',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              controller.decrease();
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF80dad0),
              ),
              child: Center(
                child: Text('Tap',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Get.to(() => FirstPage());
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF80dad0),
              ),
              child: Center(
                child: Text('Go to First Page',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),


          GestureDetector(
            onTap: () {
              Get.to(() => SecondPage());
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF80dad0),
              ),
              child: Center(
                child: Text('Second Page',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



