import 'package:bienvenue_consumer_app_flutter/features/notifications/presentation/screen/Notification/widgets/notification_tile.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "img": "restaurant.svg",
        "title": "New Restaurant Added in your Area",
        "subtitle": "10.00 Am",
      },
      {
        "img": "topup.svg",
        "title": "Top-up for KZT1000 was successful",
        "subtitle": "10.00 Am",
      },
      {
        "img": "purchase.svg",
        "title":
            "Your have purchased BOGO Deal from Toronto Burger, 2 Deals Left for Toronto Burger",
        "subtitle": "10.00 Am",
      },
    ];

    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: MyText.h2('Notifications'),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              Map item = data[index];
              return NotificationTile(
                img: item['img'],
                title: item['title'],
                subtitle: item['subtitle'],
              );
            }),
      ]),
    );
  }
}
