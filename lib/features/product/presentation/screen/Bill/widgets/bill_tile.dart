import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/BillDetail/bill_detail_screen.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/card.dart';
import 'package:flutter/material.dart';

class BillTile extends StatelessWidget {
  final String img, offer, price, user;

  const BillTile({
    super.key,
    required this.img,
    required this.offer,
    required this.price,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: GestureDetector(
        onTap: () => Navigate.to(context, BillDetailScreen.id),
        child: AppCard(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            children: [
              Image.asset('assets/images/bill.png'),
              const SizedBox(width: 10),
              const SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                          text: 'Offer: ',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: offer,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.6)))
                          ]),
                    ),
                    const SizedBox(height: 5),
                    Text('Price: \$$price',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    Text('User: $user',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
