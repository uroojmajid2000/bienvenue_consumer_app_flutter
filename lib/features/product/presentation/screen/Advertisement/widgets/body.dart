import 'package:flutter/material.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/button.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/dropdown.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            MyText.h2('Title'),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Valid till',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.5)),
                ),
                const Spacer(),
                Text(
                  '01 to 05',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            MyDropdown(
                items: const ['City'], selected: 'City', onChange: (value) {}),
            const SizedBox(height: 10),
            MyDropdown(
                items: const ['Area'], selected: 'Area', onChange: (value) {}),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Button(
                onPressed: () {},
                color: const Color(0xFFF3F5F7),
                child: Text(
                  'Upload your file in JPEG',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Dimension 1080x1920 pixel',
                style: TextStyle(color: Colors.red),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Time',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.5)),
                ),
                const Spacer(),
                Text(
                  '12 Hour',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (bool? value) {}),
                    Text(
                      'Features',
                      style: TextStyle(
                          fontSize: 20, color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '\$10',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (bool? value) {}),
                    Text(
                      'On land',
                      style: TextStyle(
                          fontSize: 20, color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '\$100',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (bool? value) {}),
                    Text(
                      'Full week (Mon to Sun)',
                      style: TextStyle(
                          fontSize: 20, color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '-10%',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Text(
                  '693',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
