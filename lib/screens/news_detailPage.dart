import 'dart:async';
import 'package:articalist/components/custom_iconButton.dart';
import 'package:articalist/screens/bookmark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:articalist/modals/newsModal.dart';
import 'package:articalist/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailPage extends StatelessWidget {
  NewsDetailPage({this.article});

  final Articles article;

  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Articalist.',
          style: kArticalistMainHeading,
        ),
        elevation: 5,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          CustomIconButtom(
            iconData: FontAwesomeIcons.solidBookmark,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Bookmarks();
              }));
            },
          ),
          CustomIconButtom(
            iconData: FontAwesomeIcons.filter,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Container(
          child:WebView(
            initialUrl: article.url,
            onWebViewCreated: (WebViewController webViewController){
              _controller.complete(webViewController);
            },
          ),
      ),
    );
  }
}
