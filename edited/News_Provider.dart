import 'dart:convert';
import 'package:flutter/material.dart';
import 'News.dart';
import 'package:http/http.dart' as http;

class News_Provider extends ChangeNotifier
{
List<artilcles> favourites= [];
List<artilcles> Addfavourites=[];
add_Favourite(int i)
{
  favourites[i].isFavourite=true;
  Addfavourites.add(favourites[i]);
 print(Addfavourites);
  notifyListeners();
}
add_News(int i )
{
}
removeFavourites(int i) {
  favourites[i].isFavourite=false;
  Addfavourites.remove(favourites[i]);
  notifyListeners();
}
fetchNews() async {
  final response = await http.get(Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2023-07-17&sortBy=publishedAt&apiKey=7a93a740c3d548df803d2f43b564115c'));
  if (response.statusCode == 200) {
    var body =jsonDecode(response.body);
    List  list= body['articles'];
    for (int i = 0; i <  list.length; i++) {
      favourites.add(artilcles.fromJson(list[i]!));}
  } else {
    throw Exception('Failed to load News');
  }
  notifyListeners();

}
}