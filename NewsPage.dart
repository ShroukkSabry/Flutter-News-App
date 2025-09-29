import 'dart:convert';
import 'package:dayy10flutterr/News.dart';
import 'package:dayy10flutterr/favoutrite_Page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'News_Provider.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  // @override
  // void initState() {
  //   super.initState();
  //   fetchNews();
  // }

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<Porvider>(context,);
    _provider.fetchNews();
    return Scaffold(
        appBar:AppBar(title: Text("احدث الاخبار"),backgroundColor: Colors.red ,
            actions: [IconButton(onPressed: ()
               { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => favourite_Page()));},
                icon:Icon(Icons.star))]) ,
        body:  ListView.builder(itemCount: _provider.favourites.length,itemBuilder: (context, index) {
          return Column
            (
            children: [
              Image.network('${_provider.favourites[index].urlToImage}'),
              Container(child: Text("${_provider.favourites[index].title}"),),
              Divider(thickness: 1,color: Colors.grey),
              Padding(padding: EdgeInsets.only(bottom: 50,left: 300),
                 child:ListTile(
                   onTap:() {
                    _provider.add_Favourite(index);
                    _provider.favourites[index]==true;
                    if(_provider.favourites[index]!.isFavourite!)
                    _provider.removeFavourites(index);
                   },
                   //leading: Container(child: Text("اكمل قراءه",style: TextStyle(color:Colors.grey.shade700 ),),),
                   trailing:_provider.favourites[index]!.isFavourite!?Icon(Icons.star) : Icon(Icons.star_border) //_provider.favourites[index]!.isFavourite!?Icon(Icons.star): Icon(Icons.star_border)

                 )
              )],
          );
        },)
    );

  }

}
