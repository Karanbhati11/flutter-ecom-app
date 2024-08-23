import 'package:bookstoreflutter/screens/BookDetailsPage.dart';
import 'package:bookstoreflutter/screens/BookListPage.dart';
import 'package:bookstoreflutter/screens/CheckoutPage.dart';
import 'package:bookstoreflutter/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'product_model.dart';

void main() => runApp(BookstoreApp());

class BookstoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookstore App',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/booklist': (context) => BookListPage(),
        '/details': (context) => BookDetailsPage(
          product: ModalRoute.of(context)?.settings.arguments as Product,
        ),
        '/checkout': (context) => CheckoutPage(),
      },
    );
  }
}
