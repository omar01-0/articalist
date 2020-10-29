import 'package:flutter/material.dart';
import 'package:articalist/modals/newsModal.dart';
import 'package:articalist/components/titleContainer.dart';
import 'package:provider/provider.dart';
import 'package:articalist/modals/cart.dart';
import 'package:articalist/screens/news_detailPage.dart';

class ArticleCardBackground extends StatelessWidget {
  ArticleCardBackground({@required this.article, @required this.child});

  final Articles article;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black45.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.all(8.0),
        height: 200,
        width: double.maxFinite,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                article.urlToImage != null ? article.urlToImage : '',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: child,
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsDetailPage(
            article: article,
          );
        }));
      },
    );
  }
}