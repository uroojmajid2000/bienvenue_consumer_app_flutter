import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Home/widgets/stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Center(child: SvgPicture.asset('assets/logos/bienvenue.svg')),
        const SizedBox(height: 50),
        const Stats(),
      ],
    );
  }
}
