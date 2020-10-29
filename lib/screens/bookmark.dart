import 'package:articalist/components/articleBackgroundCard.dart';
import 'package:articalist/components/custom_iconButton.dart';
import 'package:articalist/modals/cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import 'package:articalist/components/titleContainer.dart';

class Bookmarks extends StatelessWidget {

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
            onPressed: () {},
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
        child: Consumer<Cart>(
          builder: (context, cart, child){
            return ListView.builder(
              itemCount: cart.getLength,
              itemBuilder: (context, index) {
                final article = cart.getBookmarkList[index];
                return Column(
                  children: [
                    ArticleCardBackground(
                      article: article,
                      child: TitleContainer(
                        article: article,
                        onTab: () {
                          dynamic cart = Provider.of<Cart>(context,listen: false);
                          cart.removeBookmark(article);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
