import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/Bill/widgets/bill_tile.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "img": "bill.png",
        "offer":
            "Buy one burger and get another one burger of the same or lesser value free.",
        "price": "5",
        "user": "Mike"
      },
      {
        "img": "bill.png",
        "offer":
            "Buy one burger and get another one burger of the same or lesser value free.",
        "price": "5",
        "user": "Mike"
      },
      {
        "img": "bill.png",
        "offer":
            "Buy one burger and get another one burger of the same or lesser value free.",
        "price": "5",
        "user": "Mike"
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              Map item = data[index];
              return BillTile(
                img: item['img'],
                offer: item['offer'],
                price: item['price'],
                user: item['user'],
              );
            }),
      ),
    );
  }
}
