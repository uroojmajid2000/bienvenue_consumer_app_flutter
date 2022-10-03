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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/qr.png'),
            ),
            const SizedBox(height: 30),
            MyText.h2('Toronto Burger'),
            const SizedBox(height: 7),
            Text(
              'Valid Till: 2022-12-05',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 10),
            AppCard(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/images/qr_detail.png',
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Buy one burger and get another one burger of the same or lesser value free.',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            AppCard(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Terms & Condition',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 12),
                    MyText.body(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet porta sem, non eleifend libero semper vulputate. Quisque fringilla vel velit faucibus consequat. Morbi blandit, dui et pretium molestie, dolor metus bibendum leo, volutpat vulputate ante leo a ex. Cras condimentum ac leo vitae dapibus.'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Button(
                child: const Text(
                  'Reedem',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
