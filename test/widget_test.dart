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

void main() {
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

    // 6. List
    var list = ["a", 'b', 'c'];
    print(list);

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

    // 11. ??
    var nine5;
    var nine6 = nine5 ?? 10;
    print(nine5);
    print(nine6);

    var nine7=5;
    var nine8=nine7??6;
    print('nine8 = '+nine8.toString());

    // 12. Number 与 String 转换
    var str12_0 ='12';
    var i12_0 = int.parse(str12_0);
  });
}
