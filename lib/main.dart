import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: MyCustomeApp(),
        );
  }
}

class MyCustomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('MyCustomWidgetApp'),
       ),
       body: Column(
         children: [

               buildContainer('Box1',Colors.red),
             buildContainer('box2',Colors.greenAccent),
             buildContainer('box3',Colors.yellow),



         ],
       ),
     );
  }
  Widget buildContainer(String text,Color color){
    return Container(
      padding: EdgeInsets.only(left: 100,top: 50),
      width: 100,
      height: 100,
      decoration: BoxDecoration(border: Border.all(width: 3,color: color)),
      child: bulidText(text),

    ) ;
  }
  Widget bulidText(String title){
    return Text(
      title,style: TextStyle(fontSize: 25,backgroundColor: Colors.green),
    );
  }
}