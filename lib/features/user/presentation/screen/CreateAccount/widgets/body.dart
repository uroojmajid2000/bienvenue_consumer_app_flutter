import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Otp/otp_screen.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/button.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/dropdown.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text_field.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> businessType = ['Type of Business', 'Restaurant', 'Hotel'];
  String selectedBusinessType = 'Type of Business';
  List<String> restaurant = ['Cuisine'];
  String selecetdRestaurant = 'Cuisine';
  // List<String> excursions = ['Hotel'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Column(
        children: [
          const TextFieldContainer(
            child: Text(
              'Address',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 24),
          TextFieldContainer(
            child: MyTextField(hintText: 'Brand Name', onChange: () {}),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child:
                MyTextField(hintText: 'Legal Business Name', onChange: () {}),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child: MyTextField(hintText: 'Corporation Number', onChange: () {}),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              children: [
                Expanded(
                  child: TextFieldContainer(
                    width: 2,
                    child: MyTextField(
                      hintText: 'Street',
                      onChange: () {},
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextFieldContainer(
                    width: 2,
                    child: MyTextField(
                      hintText: 'Unit Number',
                      onChange: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              children: [
                Expanded(
                  child: TextFieldContainer(
                    width: 2,
                    child: MyTextField(
                      hintText: 'Postal Code',
                      onChange: () {},
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextFieldContainer(
                    width: 2,
                    child: MyTextField(
                      hintText: 'City',
                      onChange: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              children: [
                Expanded(
                  child: TextFieldContainer(
                    width: 2,
                    child: MyTextField(
                      hintText: 'Province',
                      onChange: () {},
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextFieldContainer(
                    width: 2,
                    child: MyTextField(
                      hintText: 'Country',
                      onChange: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child: MyDropdown(
                items: businessType,
                selected: selectedBusinessType,
                onChange: (value) {
                  setState(() {
                    selecetdRestaurant = value;
                  });
                }),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child: MyDropdown(
                items: restaurant,
                selected: selecetdRestaurant,
                onChange: (value) {
                  setState(() {
                    selecetdRestaurant = value;
                  });
                }),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child:
                MyTextField(hintText: 'Business Phone Number', onChange: () {}),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child: MyTextField(hintText: 'Email', onChange: () {}),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child: MyTextField(hintText: 'Website', onChange: () {}),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child: Button(
              child: const Text('Sign up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )),
              onPressed: () => Navigate.to(context, OtpScreen.id),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
