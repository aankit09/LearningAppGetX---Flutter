import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  final GlobalKey _globalKey = GlobalKey();
  QRViewController? controller;
  Barcode? result;

  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen(
      (event) {
        result = event;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search new Course'),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  height: 600,
                  child: QRView(key: _globalKey, onQRViewCreated: qr),
                ),
              ),
              Center(
                child: Container(
                  child: (result != null) ? Text('${result!.code}') : Text(''),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
