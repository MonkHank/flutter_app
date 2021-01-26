// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main.dart';

void outer(){
  print('outer');
}

void main() {

  void printInfo(){
    print('自定义方法');
  }

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    // 1. 常量
    const PI = 3.14159265;
    print(PI);
    final PI2 = 3.1415925;
    print(PI2);

    final a = new DateTime.now();
    print(a);
    // const a = new DateTime.now(); // 报错

    // 2. 字符串
    var str = '你好dart';
    print(str);
    var str2 = "hello dart";
    print(str2);

    String str3 = 'nihao dart';
    print(str3);

    String str4 = 'nihao';
    String str5 = 'dart';
    print("$str4 $str5");
    print(str4 + " " + str5);

    // 3. 数字 int double
    int i = 123;
    print(i);
    double d = 123;
    print(d);

    // 4. bool
    bool b = true;
    var b1 = true;

    // 5. 条件判断
    var flag = true;
    if (flag)
      print(true);
    else
      print(false);
    print(flag ? true : false);

    print('---------6. list----------');
    // 6. List
    var list = ["a", 'b', 'c'];
    print('list = $list');
    print(list.length);
    print(list.isEmpty);
    print(list.reversed);
    print(list.reversed.toList());
    print(list.join('-'));// list 转成 string



    var list2 = new List();
    list2.add(1);
    list2.add(2);
    list2.add("3");
    print(list2);

    // 7. map
    var map = {'name': 'Jack', 'age': 20};
    print(map);
    print(map['name']);

    var map2 = new Map();
    map2['name'] = 'monk';
    map2['age'] = 22;
    print(map2);

    // 8. 类型判断 is
    var iss = 123;
    if (iss is String)
      print(iss);
    else
      print("else");

    // 9 .算术运算符
    var nine0 = 13, nine1 = 5;
    print(nine0 + nine1);
    print(nine0 / nine1);
    print(nine0 % nine1); // 取余
    print(nine0 ~/ nine1); // 取整

    // 10. ??=
    var nine3;
    nine3 ??= 23; // ??= 表示nine3为null的话，就把23赋给nine3
    print(nine3);

    var nine4 = 10;
    nine4 ??= 11;
    print(nine4);

    print('----------------11----------');
    // 11. ??
    var nine5;
    var nine6 = nine5 ?? 10;
    print(nine5);
    print(nine6);
    print('nine5 = $nine5');
    print('nine6 = $nine6');

    var nine7=5;
    var nine8=nine7??6;
    print('nine8 = '+nine8.toString());

    // 12. Number 与 String 转换
    var str12_0 ='12';
    var i12_0 = int.parse(str12_0);

    print("----------------13----------");
    // 13. 映射 map
    var person13_0 ={"name":"张三","age":20};
    print(person13_0);

    var person13_1=new Map();
    person13_1["name"]="李四";
    person13_1["age"]=22;
    print(person13_1);
    print(person13_1.keys.toList());

    var person13_2=["香蕉","苹果","西瓜"];
    person13_2.forEach((element) {print(element);});
    for(var item in person13_2){print(item);}

    var person13_3=[1,2,3,4,5,6,7];
    var newList = person13_3.map((e) {return e *2;});
    print(newList);
    var newList2=person13_3.where((element) => element>5);// 筛选
    print(newList2);
    var newList3=person13_3.any((element) => element>5);// 只要有满足返回true
    print(newList3);
    var newList4=person13_3.every((element) => element>0);// 每一个都满足返回true
    print(newList4);

    // 14. 内置方法/函数
    print("--------------14------------");
    print('调用系统内置方法');
    printInfo();

    void getNum(){
      print("内置方法");
    }
    getNum();

    // 演示方法作用域
    xxx(){
      aaa(){print("aaa");}
      aaa();
    }
    xxx();

    // 定义方法，可以没有返回类型，可以没有形参类型
    sumNum(n){
      var sum = 0;
      for(int i=0;i<=n;i++){
        sum+=i;
      }
      return sum;
    }

    // 可选参数[]，以及默认参数sex='男'
    String printUserInfo(username,[int age,String sex='男']){
      String  reuslt= '姓名:$username---年龄:$age---性别：$sex';
      print(reuslt);
      return reuslt;
    }
    printUserInfo("张三",10,'女');
    printUserInfo("李四");

    // 命名函数
    String printUserInfo2(username,{int age,String sex='男'}){
      String  reuslt= '姓名:$username---年龄:$age---性别：$sex';
      print(reuslt);
      return reuslt;
    }
    printUserInfo2("张三",age:10,sex: '女');
    printUserInfo2("李四");

    // 方法作为参数传入
    fn1(){
      print('fn1');
    }
    fn2(fn){
      fn();
      print('fn2');
    }
    fn2(fn1);// 把fn1当做参数传入

    var fn3=(){print('我是一个匿名方法');};
    fn3();

    // 自执行方法
    {(){print('我是自执行方法');}();}

    {(n){
      print(n);
      print('我是自执行方法');
    }(12);}

    // 闭包
    fn(){
      var a = 123;// 局部变量，不污染全局
      return (){
        a++;
        print(a);
      };
    }
    var biBao = fn();
    biBao();

  });



}
