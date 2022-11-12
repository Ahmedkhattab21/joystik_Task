
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  bool selectCenter=false;
  int selectInside=0;
  int selectOutside=0;
  int centerColor=0;
  List<Color> colorNum=[
    Colors.grey,
    Colors.white,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.white,
    Colors.blue,
    Colors.red,
    Colors.green,
  ];
  List<String> listColors=[];

 bool thePointInTheCircleOrNot(double x, double y ,double cx,double cy ,double r){
    if((x-cx)*(x-cx)+(y-cy)*(y-cy) == r*r || (x-cx)*(x-cx)+(y-cy)*(y-cy) <= r*r ){
      return true;
    }else{
      return false;
    }
  }
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: GestureDetector(

                onLongPressMoveUpdate: (TapDownDetails){
                  if(thePointInTheCircleOrNot(TapDownDetails.localPosition.dx,TapDownDetails.localPosition.dy,130,130,20)){
                    setState(() {
                      selectCenter = true;
                      selectInside=0;
                      selectOutside=0;
                      centerColor=0;
                    });
                    print("Center tap1");
                  }
                  if(thePointInTheCircleOrNot(TapDownDetails.localPosition.dx,TapDownDetails.localPosition.dy,130,130,70)){
                    if(thePointInTheCircleOrNot(TapDownDetails.localPosition.dx,TapDownDetails.localPosition.dy,130,130,40)){
                    }else{
                     if(selectCenter==true){
                       if(TapDownDetails.localPosition.dx>=130 && TapDownDetails.localPosition.dx<=200 && TapDownDetails.localPosition.dy>=60 && TapDownDetails.localPosition.dy<=130) {
                         if(selectInside == 0){
                           setState(() {
                             centerColor=1;
                             selectInside=1;
                             listColors.add("white");
                           });
                         }
                         print("heeeee 1");
                       }else if(TapDownDetails.localPosition.dx>=130 && TapDownDetails.localPosition.dx<=200 && TapDownDetails.localPosition.dy>=130 && TapDownDetails.localPosition.dy<=200){
                         if(selectInside == 0){
                           setState(() {
                             centerColor=2;
                             selectInside=2;
                             listColors.add("blue");

                           });
                         }
                         print("heeeee 2");
                       }else if(TapDownDetails.localPosition.dx>=60 && TapDownDetails.localPosition.dx<=130 && TapDownDetails.localPosition.dy>=130 && TapDownDetails.localPosition.dy<=200){
                         if(selectInside == 0){
                           setState(() {
                             centerColor=3;
                             selectInside=3;
                             listColors.add("yellow");

                           });
                         }
                         print("heeeee 3");
                       }else if(TapDownDetails.localPosition.dx>=60 && TapDownDetails.localPosition.dx<=130 && TapDownDetails.localPosition.dy>=60 && TapDownDetails.localPosition.dy<=130){
                         if(selectInside ==0){
                           setState(() {
                             centerColor=4;
                             selectInside=4;
                             listColors.add("green");

                           });
                         }
                         print("heeeee 4");
                       }
                     }

                    }
                  }
                  if(thePointInTheCircleOrNot(TapDownDetails.localPosition.dx,TapDownDetails.localPosition.dy,130,130,130)){
                    if(thePointInTheCircleOrNot(TapDownDetails.localPosition.dx,TapDownDetails.localPosition.dy,130,130,95)){
                    }else{
                      if(TapDownDetails.localPosition.dx>=130 && TapDownDetails.localPosition.dx<=260 && TapDownDetails.localPosition.dy>=0 && TapDownDetails.localPosition.dy<=130) {
                        if(selectInside==1){
                          setState(() {
                            centerColor=5;
                            selectInside=5;
                            selectOutside=1;
                            listColors.add("white");
                          });
                        }
                        print("heeeee 11");
                      }else if(TapDownDetails.localPosition.dx>=130 && TapDownDetails.localPosition.dx<=260 && TapDownDetails.localPosition.dy>=130 && TapDownDetails.localPosition.dy<=260){
                       if(selectInside==2){
                         setState(() {
                           centerColor=6;
                           selectInside=5;
                           selectOutside=2;
                           listColors.add("blue");
                         });
                       }
                        print("heeeee 22");
                      }else if(TapDownDetails.localPosition.dx>=0 && TapDownDetails.localPosition.dx<=130 && TapDownDetails.localPosition.dy>=130 && TapDownDetails.localPosition.dy<=260){
                        if(selectInside==3){
                          setState(() {
                            centerColor=7;
                            selectInside=5;
                            selectOutside=3;
                            listColors.add("red");
                          });
                        }
                        print("heeeee 33");
                      }else if(TapDownDetails.localPosition.dx>=0 && TapDownDetails.localPosition.dx<=130 && TapDownDetails.localPosition.dy>=0 && TapDownDetails.localPosition.dy<=130){
                        if(selectInside==4){
                          setState(() {
                            centerColor=8;
                            selectInside=5;
                            selectOutside=4;
                            listColors.add("green");
                          });
                        }
                        print("heeeee 44");
                      }
                    }
                  }

                  print(TapDownDetails.localPosition);
                },
                onLongPressEnd: (LongPressEndDetails){
                  setState(() {
                    listColors=[];
                    selectCenter = true;
                    selectInside=0;
                    selectOutside=0;
                    centerColor=0;
                  });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [

                    Container(
                      width: 260,
                      height: 260,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration:  BoxDecoration(
                                      color: selectOutside ==4 ? Colors.green : Colors.green.withOpacity(.5),
                                      borderRadius:const BorderRadius.only(
                                        topLeft: Radius.circular(130),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(130),
                                        ),
                                        color:selectOutside ==1 ? Colors.white : Colors.white.withOpacity(.7)
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(130),
                                        ),
                                        color:selectOutside ==3? Colors.red : Colors.red.withOpacity(.5)
                                    ),
                                  ),

                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(130),
                                        ),
                                        color:selectOutside ==2? Colors.blue : Colors.blue.withOpacity(.5)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration:  BoxDecoration(
                                      color: selectInside==4? Colors.green : Colors.green.withOpacity(.5),
                                      borderRadius:const BorderRadius.only(
                                        topLeft: Radius.circular(70),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(70),
                                        ),
                                        color: selectInside==1? Colors.white : Colors.white.withOpacity(.7)
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(70),
                                        ),
                                        color:selectInside==3? Colors.yellow : Colors.yellow.withOpacity(.5)
                                    ),
                                  ),

                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(70),
                                        ),
                                        color:selectInside==2? Colors.blue : Colors.blue.withOpacity(.5)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:colorNum[centerColor],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white38,
              child:Text(listColors.toString()),
            )
          ],
        ),
      ),
    );
  }





// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key , required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var selectMode = false;
//
//   Map<String, bool> listItemSelected = {
//     'List 1': false,
//     'List 2': false,
//     'List 3': false,
//     'List 4': false,
//     'List 5': false,
//     'List 6': false,
//     'List 7': false,
//     'List 8': false,
//     'List 9': false,
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: ListView(
//           children: listItemSelected.keys.map((key) {
//             return Card(
//               child: GestureDetector(
//                 onTap: () {
//                   // if multi-select mode is true, tap should select List item
//                   if (selectMode && listItemSelected.containsValue(true)) {
//                     debugPrint('onTap on $key');
//                     setState(() {
//                       listItemSelected[key] = !listItemSelected[key]!;
//                     });
//                   } else {
//                     // Stop multi-select mode when there's no more selected List item
//                     debugPrint('selectMode STOP');
//                     selectMode = false;
//                   }
//                 },
//                 // Start List multi-select mode on long press
//                 onLongPress: () {
//                   debugPrint('onLongPress on $key');
//                   if (!selectMode) {
//                     debugPrint('selectMode START');
//                     selectMode = true;
//                   }
//                   print("ggg");
//                   setState(() {
//                     listItemSelected[key] = !listItemSelected[key]!;
//                   });
//                 },
//                 child: Container(
//                   // Change List item color if selected
//                   color: (listItemSelected[key]!)
//                       ? Colors.lightBlueAccent
//                       : Colors.white,
//                   padding: EdgeInsets.all(16.0),
//                   child: Text(key),
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
}




// Widget build(BuildContext context) {
//  return MaterialApp(
//    home: Scaffold(
//      body:Center(
//        child: GestureDetector(
//          onTapDown: (TapUpDetails){
//
//            // print(TapUpDetails.localPosition);
//            // print("move 11");
//          },
//          onLongPressMoveUpdate: (LongPressMoveUpdateDetails){
//            if(LongPressMoveUpdateDetails.localPosition.dx>=0&&LongPressMoveUpdateDetails.localPosition.dx<=98){
//              print("move 1");
//            }else if(LongPressMoveUpdateDetails.localPosition.dx>=100&&LongPressMoveUpdateDetails.localPosition.dx<=198){
//              print("Move2");
//            }
//            print(LongPressMoveUpdateDetails.localPosition);
//            print("ff");
//          },
//          child: Row(
//            children: [
//              Container(
//                width: 98,
//                height: 100,
//                color: Colors.green,
//                child: Text("f1"),),
//              Container(
//                width: 2,
//                height: 100,
//                color: Colors.white,
//              ),
//              Container(
//                width: 98,
//                height: 100,
//                color: Colors.green,
//                child: Text("f2"),),
//              Container(
//                width: 2,
//                height: 100,
//                color: Colors.white,
//              ),
//              Container(
//                width: 60,
//                height: 100,
//                color: Colors.green,
//                child: Text("f3"),),
//              Container(
//                width: 2,
//                height: 100,
//                color: Colors.white,
//                ),
//              Container(
//                width: 98,
//                height: 100,
//                color: Colors.green,
//                child: Text("f4"),),
//            ],
//          ),
//        ),
//      ) ,
//    ),
//  );
//   }