
class A{ // 作为mixins类
  String _info = "this is a";
  a(){
    print("A");
  }
}

class B{ // 作为mixins类
  b(){
    print('B');
  }
}

class C with A, B{

}

main(){
  var c = new C();
  c.a();
  c.b();
  c._info;
}
