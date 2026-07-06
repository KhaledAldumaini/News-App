import 'package:dio/dio.dart';

class NewsService{

  final dio = Dio();

  void getNews() async {
    final response = await dio.get( "https://newsdata.io/api/1/latest?apikey=pub_98034e855e6642e28b8ad433c3b5cf7b &country=ye,us &language=ar,en &category=sports,politics,technology,science &image=1");
    print(response.data);
  }

}