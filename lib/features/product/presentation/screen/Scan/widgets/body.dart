import 'dart:io';
import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/ProductDetail/product_details_screen.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/button.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            // child: (result != null)
            //     ? Text(
            //         'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
            //     : Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           MyText.h2('Scan QR code'),
            //           const SizedBox(
            //             height: 20,
            //           ),
            //           Button(
            //               onPressed: () {},
            //               child: const Text('Scan',
            //                   style: TextStyle(color: Colors.white)))
            //         ],
            //       ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText.h2('Scan QR code'),
                const SizedBox(
                  height: 20,
                ),
                Button(
                    onPressed: () =>
                        Navigate.to(context, ProductDetailScreen.id),
                    child: const Text('Scan',
                        style: TextStyle(color: Colors.white)))
              ],
            ),
          ),
        )
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
