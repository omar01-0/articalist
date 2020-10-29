import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'modals/cart.dart';
import 'screens/InterestScreen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
      create: (context) {
        return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Articalist',
        theme: ThemeData.dark(),
        home: InterestScreen(),
      ),
    );
  }
}
