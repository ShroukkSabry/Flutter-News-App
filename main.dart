import 'package:dayy10flutterr/favoutrite_Page.dart';
import 'package:flutter/material.dart';
import 'package:dayy10flutterr/NewsPage.dart';
import 'package:dayy10flutterr/News.dart';
import 'package:provider/provider.dart';
import 'package:dayy10flutterr/favoutrite_Page.dart';

import 'News_Provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Porvider(),
      child: MaterialApp(home: NewsPage(),) ,
    ),
  );
}
