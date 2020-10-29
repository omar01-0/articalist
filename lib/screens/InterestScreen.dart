import 'package:articalist/screens/news_feed.dart';
import 'package:articalist/components/custom_filterchip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:articalist/constants.dart';

class InterestScreen extends StatefulWidget {
  static final List<String> selectedFilters = List();

  @override
  _InterestScreenState createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  List<Widget> _buildFilterChips(List<String> array) {
    List<Widget> filters = List();
    for (int i = 0; i < array.length; i++) {
      filters.add(CustomFilterChip(
        chipName: array[i],
      ));
    }
    return filters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height*1.5,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 150.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            right: 15.0, top: 15.0, bottom: 15.0, left: 15.0),
                        child: Text(
                          'Your Interests..',
                          style: kInterestHeadings,
                        ),
                      ),
                      Container(
                        height: 150,
                        child:
                            buildInterestBlocks(kPoliticalFigures, 'Politics'),
                      ),
                      Container(
                        height: 150,
                        child: buildInterestBlocks(kCountries, 'Countries'),
                      ),
                      Container(
                        height: 150,
                        child: buildInterestBlocks(
                            kBigCompanies, 'Grand Companies'),
                      ),
                      Container(
                        height: 150,
                        child: buildInterestBlocks(
                            kProgrammingLang, 'Programming'),
                      ),
                      Container(
                        height: 150,
                        child: buildInterestBlocks(kSports, 'Sports'),
                      ),
                      Container(
                        height: 150,
                        child: buildInterestBlocks(kPets, 'Pets'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15.0,
              right: 15.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        maintainState: true,
                        builder: (context) {
                          return NewsFeed(
                            filters: InterestScreen.selectedFilters,
                          );
                        },
                      ));
                },
                elevation: 5,
                shape: CircleBorder(),
                padding: EdgeInsets.all(10.0),
                color: Colors.black38,
                child: Icon(
                  Icons.check,
                  color: Colors.amberAccent,
                  size: 50.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildInterestBlocks(List<String> interestList, String blockTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          blockTitle,
          style:
              kInterestHeadings.copyWith(fontSize: 35.0, color: Colors.white70),
        ),
        SizedBox(
          height: 10.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            alignment: WrapAlignment.start,
            children: _buildFilterChips(interestList),
          ),
        ),
      ],
    );
  }
}
