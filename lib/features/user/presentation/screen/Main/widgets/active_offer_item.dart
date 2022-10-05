import 'package:bienvenue_consumer_app_flutter/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveOfferItem extends StatelessWidget {
  const ActiveOfferItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: AppCard(
        child: Row(children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14), bottomLeft: Radius.circular(14)),
            child: Image.asset(
              'assets/images/pizza.png',
              height: 120,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Toronto Pizaa',
                      style: TextStyle(fontSize: 18),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/rate.svg'),
                        const SizedBox(width: 7),
                        const Text('4.1'),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 3),
                const Text(
                  'Toronto 5 offer',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Burger, Pizza',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/tag.svg'),
                    const SizedBox(width: 10),
                    const Text(
                      'Buy one get one free',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
