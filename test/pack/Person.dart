
class Person{
  var name = '展示';
  var age = 12;

  // 构造函数简写
  Person(this.name,this.age);

  // 命名构造函数
  Person.now(){print('我是命名构造函数');}

  getInfo(){
    print('$name---$age');
    print('${this.name}---${this.age}');
  }
}