
import 'dart:convert';
import 'dart:io';

void main() async{
  var result = _getDataFromZhihuAPI();
  print('result:$result');
}

/// 异步方法
_getDataFromZhihuAPI() async{
  var httpClient = new HttpClient();
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  var request = await httpClient.getUrl(uri);
  var response = await request.close();
  return await response.transform(utf8.decoder).join();
}