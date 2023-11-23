import 'package:flutter/material.dart';
import 'package:products_app/data/models/products.dart';

class ProductDetailPage extends StatefulWidget {
  Products product;

  ProductDetailPage({required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.product.image}"),
            Text(
              "${widget.product.price} ₺",
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
