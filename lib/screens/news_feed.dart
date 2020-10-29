import 'package:articalist/components/articleBackgroundCard.dart';
import 'package:articalist/components/titleContainer.dart';
import 'package:articalist/modals/cart.dart';
import 'package:articalist/screens/bookmark.dart';
import 'package:articalist/components/custom_iconButton.dart';
import 'package:articalist/constants.dart';
import 'package:flutter/material.dart';
import 'package:articalist/services/news_API_manager.dart';
import 'package:articalist/modals/newsModal.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NewsFeed extends StatefulWidget {
  NewsFeed({this.filters});

  final List<String> filters;

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  Future<NewsModal> _newsModal;
  APIManager _apiManager = APIManager();

  @override
  void initState() {
    _newsModal = _apiManager.getNews(widget.filters);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Articalist.',
          style: kArticalistMainHeading,
        ),
        elevation: 3,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          CustomIconButtom(
            iconData: FontAwesomeIcons.solidBookmark,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
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
      body: SafeArea(
        child: FutureBuilder<NewsModal>(
          future: _newsModal,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(5.0),
                itemCount: snapshot.data.articles.length,
                itemBuilder: (context, index) {
                  var article = snapshot.data.articles[index];
                  return Column(
                    children: <Widget>[
                      ArticleCardBackground(
                        article: article,
                        child: TitleContainer(
                          article: article,
                          onTab: () {
                            dynamic cart = Provider.of<Cart>(context,listen: false);
                            cart.bookmark(article);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }


}


