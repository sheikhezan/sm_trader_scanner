import 'package:get/get.dart';

class ScannerController extends GetxController {
  RxString scannedResult = RxString('');

  void scanBarcode() {
    // Placeholder for scanning functionality
    scannedResult.value = 'Scan Result: ABC123';
  }
}
