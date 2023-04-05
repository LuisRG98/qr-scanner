import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannButton extends StatelessWidget {
  const ScannButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(
        Icons.filter_center_focus,
        color: Colors.white,
      ),
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#3D8BEF', 'Cancel', false, ScanMode.QR);
      },
    );
  }
}
