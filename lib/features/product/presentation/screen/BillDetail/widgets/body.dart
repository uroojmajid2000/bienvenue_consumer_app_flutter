import 'package:bienvenue_consumer_app_flutter/shared/widgets/button.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/card.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          AppCard(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [
                Image.asset('assets/images/bill_detail.png'),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Toronto burger',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    MyText.body('Ismail'),
                    MyText.body('Burger, Pizza'),
                  ],
                )
              ]),
            ),
          ),
          const SizedBox(height: 10),
          AppCard(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Row(
                  children: const [
                    Text('1 x Burger'),
                    Spacer(),
                    Text('\$ 5'),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.black,
                  thickness: 0.6,
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text('1 x Burger'),
                    Spacer(),
                    Text('\$ 5'),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.black,
                  thickness: 0.6,
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text('Total'),
                    Spacer(),
                    Text('\$ 10'),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.black,
                  thickness: 0.6,
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text('Deal buy one get one free'),
                    Spacer(),
                    Text('\$ -5'),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.black,
                  thickness: 0.6,
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text('Total Amount'),
                    Spacer(),
                    Text('\$ 5'),
                  ],
                ),
              ]),
            ),
          ),
          const SizedBox(height: 20),
          Button(
              onPressed: () {},
              child: const Text(
                'Print',
                style: TextStyle(color: Colors.white),
              )),
        ]),
      ),
    );
  }
}
