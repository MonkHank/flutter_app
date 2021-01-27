/// 定义一个DB库，支持 MySQL、mssql、MongoDB
/// 用抽象类来定义接口
abstract class Db{// 当做接口

  String url ;

  add();
  save();
  delete();
}