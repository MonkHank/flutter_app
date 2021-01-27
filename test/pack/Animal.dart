

/// dart 中没有public private protected
/// 但是可以使用 _ 下划线把一个属性或者方法定义成私有
class Animal{
  String _name;
  int age;

  // 构造函数简写
  // Animal(this._name, this.age);

  // 命名构造函数
  Animal.now(){print('我是命名构造函数');}

  // 构造函数体运行之前初始化实例变量
  Animal():_name='小狗',age=1{}

  void _eat(){
    print('私有方法_eat()--$_name--$age');
  }

  exeEat(){_eat();}

}

/// dart 中的对象操作符
/// ? (条件运算符)、 as(类型转换)、 is(类型判断)、..(连缀)
main(){
  Animal a = new Animal();
  a?.exeEat();

  Animal a1 = new Animal();
  if(a1 is Animal){}

  var a2 ;
  a2 = '字符串';
  a2 = new Animal();
  a2.exeEat();
  (a2 as Animal).exeEat();

  var a3=new Animal();
  a3.._name='小猫'..age=3..exeEat();

}