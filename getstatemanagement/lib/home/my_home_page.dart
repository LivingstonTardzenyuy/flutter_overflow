import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatemanagement/controller/controller.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());

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

          Container(
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

          Container(
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
          )
        ],
      ),
    );
  }
}




// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//
//   void _showBottomSheet() {
//     Get.bottomSheet(
//       Container(
//         color: Colors.white,
//         child: Wrap(
//           children: <Widget>[
//             ListTile(
//               leading: Icon(Icons.music_note),
//               title: Text('Music'),
//               onTap: () => {},
//             ),
//             ListTile(
//               leading: Icon(Icons.videocam),
//               title: Text('Video'),
//               onTap: () => {},
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: Colors.white,
//       isDismissible: true,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
//       ),
//       enableDrag: true,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: Text('Hello'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _showBottomSheet,
//           child: Text('Show Bottom Sheet'),
//         ),
//       ),
//     );
//   }
// }
