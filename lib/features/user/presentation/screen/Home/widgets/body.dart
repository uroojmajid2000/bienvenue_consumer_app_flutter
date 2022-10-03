import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Home/widgets/active_offer_item.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Home/widgets/redeemed_card.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Home/widgets/stats.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(width: 300, height: 400, child: SalesChart()),
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 10.0,
            left: 20.0,
            right: 20.0,
          ),
          child: MyText.h2('Stats'),
        ),
        const Stats(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: MyText.h2('Reedemed'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: const [
              RedeemedCard(heading: 'Today', value: '3'),
              SizedBox(width: 20),
              RedeemedCard(
                heading: 'Week',
                value: '21',
              ),
              SizedBox(width: 20),
              RedeemedCard(
                heading: 'Month',
                value: '23',
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: MyText.h2('Active Offers'),
        ),
        const ActiveOfferItem(),
      ],
    );
  }
}
