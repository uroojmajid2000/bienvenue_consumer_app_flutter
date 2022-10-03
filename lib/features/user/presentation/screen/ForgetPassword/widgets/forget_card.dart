import 'package:bienvenue_consumer_app_flutter/shared/widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetCard extends StatelessWidget {
  final String heading, value, image;

  ForgetCard({
    super.key,
    required this.heading,
    required this.value,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF3F5F7),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              SvgPicture.asset(image),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: TextStyle(color: Color(0xFF828282)),
                    ),
                    SizedBox(height: 5),
                    Text(value),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
