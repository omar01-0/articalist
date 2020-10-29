import 'package:flutter/material.dart';
const String URL = 'https://newsapi.org/v2/everything?qInTitle=';
const String headlinesURL = 'https://newsapi.org/v2/top-headlines';


const List<String> kPoliticalFigures = [
  'Imran Khan',
  'Donald Trump',
  'Boris Johnson',
  'Nancy Pelosi',
  'Nicolas Maduro',
  'Kamala Harris',
  'Bernie Sanders',
  'Tulsi Gabbard',
  'Joe Biden',
  'Narendra Modi',
  'Alexandria Ocasio Cortez',
];

const List<String> kCountries = [
  'Pakistan',
  'Turkey',
  'Malaysia',
  'USA',
  'China',
  'Russia',
  'Germany',
  'India',
  'Afghanistan',
  'United Kingdom'
];

const List<String> kSports = [
  'Cricket',
  'Football',
  'Rugby',
  'Tennis',
  'NBA',
  'Olympics'
];

const List<String> kPets = [
  'Cats',
  'Dogs',
  'Parrots',
  'Hamsters',
  'Lions'
];

const List<String> kProgrammingLang = [
  'Flutter',
  'Dart',
  'Java',
  'JavaScript',
  'Python',
  'Kotlin',
  'ReactJS'
];

const List<String> kBigCompanies = [
  'Google',
  'Tesla',
  'Facebook',
  'Microsoft',
  'Rolls Royce',
  'Audi',
  'BMW',
  'Mercedes',
  'Jeep'
];

const kArticalistMainHeading = TextStyle(
  fontFamily: 'Pacifico',
  color: Colors.amberAccent,
  letterSpacing: 1.5,
  fontSize: 35.0,
  fontWeight: FontWeight.w800,
);

const kInterestHeadings = TextStyle(
  color: Colors.amberAccent,
  fontWeight: FontWeight.bold,
  fontSize: 40.0,
  letterSpacing: 1.5,
  fontFamily: 'Pacifico',
);

const kArticalistSubHeading = TextStyle(
  color: Colors.white54,
  fontSize: 16.0,
  fontWeight: FontWeight.w300,
);

const kArticleTitle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w800
);