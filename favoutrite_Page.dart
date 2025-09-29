import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dayy10flutterr/News_Provider.dart';
class favourite_Page extends StatelessWidget {
  const favourite_Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _provider=Provider.of<Provider>(context);
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,
        title: Text("Your Favourites"),
    ),
    body: Column(
    children: [
    ListView.builder(
    itemCount: _provider.Addfavourites.length,
    itemBuilder: (context, index) {
Container(child: Text("${_provider.Addfavourites[index]}"),);
    },)]));
  }
}
