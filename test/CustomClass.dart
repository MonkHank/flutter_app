import 'pack/Animal.dart';
import 'pack/Person.dart';
import 'pack/Rect.dart';

void main(){

  var p1 = new Person("李四",20);
  p1.getInfo();
  var name = p1.name;

  var p2 = new Person.now();

  var a1 = new Animal("dog", 12);
  var age = a1.age;

  var r = new Rect(12, 12);
  print('面积：${r.area}');




}