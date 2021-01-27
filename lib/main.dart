import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

_loadData() async{
  String dataUrl = '';
  http.Response response= await http.get(dataUrl);

}

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "flutter demo",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          elevation: 5,
          shadowColor: Colors.grey,
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container( // div
        child: Text("你好,这是个flutter项目的demo",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 12,
            color: Colors.blue,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 2.0,
          ),
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.5,
        ),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        alignment: Alignment.bottomCenter,
      ),
    );
  }

}