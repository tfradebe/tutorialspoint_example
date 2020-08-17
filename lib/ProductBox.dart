import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tutorialspoint_examples/Product.dart';
import 'package:tutorialspoint_examples/RatingBox.dart';

class ProductBox extends StatelessWidget {
  final Product item;

  ProductBox({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images.jfif'),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.item.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.item.description),
                    Text('Price: ' + this.item.price.toString()),
                    RatingBox(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
