import 'package:flutter/material.dart';
import 'package:products_app/data/models/products.dart';
import 'package:products_app/ui/views/product_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Products>> productUpload() async {
    var productsList = <Products>[];
    var product1 = Products(
      id: 1,
      name: "Macbook Pro 14",
      image: "bilgisayar.png",
      price: 43000,
    );
    var product2 = Products(
      id: 2,
      name: "Rayban Club Master",
      image: "gozluk.png",
      price: 35800,
    );
    var product3 = Products(
      id: 3,
      name: "Sony ZX Series",
      image: "kulaklik.png",
      price: 7500,
    );
    var product4 = Products(
      id: 4,
      name: "Gio Armani",
      image: "parfum.png",
      price: 43000,
    );
    var product5 = Products(
      id: 5,
      name: "Casio X Series",
      image: "saat.png",
      price: 25000,
    );
    var product6 = Products(
      id: 6,
      name: "Dyson V8",
      image: "supurge.png",
      price: 12000,
    );
    var product7 = Products(
      id: 7,
      name: "Iphone 13",
      image: "telefon.png",
      price: 50000,
    );

    productsList.add(product1);
    productsList.add(product2);
    productsList.add(product3);
    productsList.add(product4);
    productsList.add(product5);
    productsList.add(product6);
    productsList.add(product7);

    return productsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: FutureBuilder<List<Products>>(
        future: productUpload(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var productList = snapshot.data;
            return ListView.builder(
              itemCount: productList!.length,
              itemBuilder: (context, index) {
                var product = productList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(product: product),));
                  },
                  child: Card(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              width: 128,
                              height: 128,
                              child: Image.asset("images/${product.image}")),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.name),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${product.price} ₺",
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print("${product.name} add to sepet");
                              },
                              child: Text("Add"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
