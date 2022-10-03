import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Home/widgets/active_offer_item.dart';
import 'package:flutter/material.dart';

class ActiveOffers extends StatelessWidget {
  const ActiveOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) => const ActiveOfferItem(),
    );
  }
}
