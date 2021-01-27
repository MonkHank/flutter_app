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
3. 抽象类、多态、接口
- 允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
- 子类的实例赋值给父类的引用
- 多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现
- dart中没有interface关键字定义接口，而是普通类或者抽象类作为接口被实现，同样适用implements关键字实现
- 多层实现，不能多层继承
4. dart中使用mixins实现类似多继承的功能
- 作为mixins的类只能继承object，不能继承其他类
- 作为mixins的类不能有构造函数
- 一个类可以mixins多个mixins类
- mixins绝不是继承，也不是接口，而是一种全新的特性
5. 内置库、三方库
- async 和 await
- 只需要记住两点：
    - 只有async方法才能使用await关键字调用方法，如果调用别的async方法必须使用await关键字
    - async是让方法变成异步，await是等待异步方法完成
- pub包管理系统，
1. 从下面找到要用的库
    - https://pub.dev/packages
    - https://pub.flutter-io.cn/packages
    - https://pub.dartlang.org/flutter
2. 创建一个pubspec.yaml文件，内容如下
- ```
    name:xxx
    description: A new flutter module project
    dependencies:
        http: ^0.12.0+2
        date_format: ^1.0.6
  ```
3. 配置dependencises
4. 运行pub get获取远程库
5. 看文档引入库使用
