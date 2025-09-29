import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dayy10flutterr/News_Provider.dart';
class favourite_Page extends StatelessWidget {
  const favourite_Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _provider=Provider.of<News_Provider>(context);
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,
        title: Text("Your Favourites"),
    ),
    body: Column(
    children: [
      Padding(padding:EdgeInsets.all(10),child: ListView.builder(
        shrinkWrap: true,
        itemCount: _provider.Addfavourites.length,
        itemBuilder: (context, index) {
         return Column(children: [ SizedBox(height: 10,),Container(child: Text("${_provider.Addfavourites[index].url}"),color:Colors.red.shade50 ,padding: EdgeInsets.all(10),)],
         );
        },
      ))
   ]));
  }
}
