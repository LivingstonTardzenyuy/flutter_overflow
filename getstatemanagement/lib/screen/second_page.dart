import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getstatemanagement/controller/controller.dart';
import 'package:getstatemanagement/screen/third_page.dart';

import 'awersome.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF80dad0),
                ),
                child: Center(
                  child: GetBuilder<TapController>(
                    builder: (_) {
                      return Center(
                        child: Text(controller.x.toString(),
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      );
                    },

                  ),
                ),
              ),


              GestureDetector(
                onTap: () {
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
                    child: Text('Decrease X',
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
                  Get.to(() => ThirdPage());
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
                    child: Text('Third Page',
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
                  // void showDialogBox() {
                    Get.defaultDialog(
                      title: "Theme Change",
                      content: Text("Do you want to change the theme?"),
                      onCancel: () {},
                      onConfirm: () {
                        // toggleTheme();
                        Get.back();
                        Get.back();

                      }
                    );
                  // }
                  Get.snackbar(
                    "Snackbar Title",
                    "This is a snackbar message.",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.black,
                    colorText: Colors.white,
                  );

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
                    child: Text('Awersome View',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
