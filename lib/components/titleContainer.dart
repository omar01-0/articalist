import 'package:flutter/material.dart';
import 'package:articalist/constants.dart';
import 'package:articalist/modals/newsModal.dart';
import 'package:articalist/components/custom_iconButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleContainer extends StatelessWidget {

  TitleContainer({this.article, this.onTab});

  final Articles article;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(
        height: 130.0,
        width: MediaQuery.of(context).size.width - 25,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black54,
      ),
      padding: EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 2),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Text(
                    article.title,
                    style: kArticleTitle,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CustomIconButtom(
                    iconData: FontAwesomeIcons.bookmark,
                    onPressed: onTab,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  article.source.name != null
                      ? article.source.name
                      : 'Anonymous',
                  style: kArticalistSubHeading,
                ),
                Text(
                  article.publishedAt.substring(0,10)??'',
                  style: kArticalistSubHeading,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}