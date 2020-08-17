import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tutorialspoint_examples/MyAnimatedWidget.dart';
import 'package:tutorialspoint_examples/ProductBox.dart';

import 'Product.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.blue),
        home: MyHomePage(
          title: 'Product layout demo home page',
          animation: animation,
        ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final Animation<double> animation;
  MyHomePage({Key key, this.animation, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          FadeTransition(
            child: ProductBox(
              item: Product(
                name: 'iPhone',
                description: 'Worse than android',
                price: 1000,
                image: 'images.jfif',
              ),
            ),
            opacity: animation,
          ),
          MyAnimatedWidget(
            child: ProductBox(
              item: Product(
                name: 'Pixel',
                description: 'Pixel is the most featured phone ever',
                price: 800,
                image: 'images.jfif',
              ),
            ),
            animation: animation,
          ),
          MyAnimatedWidget(
            child: ProductBox(
              item: Product(
                name: 'Pixel',
                description: 'Pixel is the most featured phone ever',
                price: 800,
                image: 'images.jfif',
              ),
            ),
            animation: animation,
          ),
          MyAnimatedWidget(
            child: ProductBox(
              item: Product(
                name: 'Pixel',
                description: 'Pixel is the most featured phone ever',
                price: 800,
                image: 'images.jfif',
              ),
            ),
            animation: animation,
          ),
          MyAnimatedWidget(
            child: ProductBox(
              item: Product(
                name: 'Pixel',
                description: 'Pixel is the most featured phone ever',
                price: 800,
                image: 'images.jfif',
              ),
            ),
            animation: animation,
          ),
          MyAnimatedWidget(
            child: ProductBox(
              item: Product(
                name: 'Pixel',
                description: 'Pixel is the most featured phone ever',
                price: 800,
                image: 'images.jfif',
              ),
            ),
            animation: animation,
          ),
        ],
      ),
    );
  }
}
