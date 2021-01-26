# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## [flutter中文网](https://flutterchina.club/setup-windows/)
### Dart
1. 常量：final 和 const 修饰符 <br />
const：值不变，一开始就得赋值<br/>
final：可以开始不赋值，只能赋一次；而 final 不仅有 const 的编译时常量特性，最重要的是它是运行时常量，并且final似乎惰性初始化，即在运行时第一次使用前才初始化
- 永远不改变的两，请使用 final 或 const 修饰，而不是使用 var 或其他类型
2. 闭包
- 全局变量特点：全局变量常驻内存，全局变量污染内存
- 局部变量特点：不常驻内存会被垃圾回收机制回收，不会污染全局

- 闭包：常驻内存，不污染全局；函数嵌套函数，内部函数会调用外部函数的变量或参数，变量或参数不会被系统污染
- 写法：函数嵌套函数，并return 里面的函数，这样就形参了闭包