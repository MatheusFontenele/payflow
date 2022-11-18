import 'package:camera/camera.dart';

class BarCodeScannerStatus {
  final bool isCameraAvailable;
  final String error;
  final String barcode;

  CameraController? cameraController;

  BarCodeScannerStatus({
    this.isCameraAvailable = false,
    this.cameraController,
    this.barcode = "",
    this.error = "",
  });

  factory BarCodeScannerStatus.available(CameraController cameraController) =>
      BarCodeScannerStatus(
        isCameraAvailable: true,
        cameraController: cameraController,
      );

  factory BarCodeScannerStatus.error(String message) =>
      BarCodeScannerStatus(error: message);

  factory BarCodeScannerStatus.barcode(String barcode) =>
      BarCodeScannerStatus(barcode: barcode);

  //valida se a camera pode ser habilitada
  bool get canShowCamera => isCameraAvailable && error.isEmpty;

  //verifica se ha erros
  bool get hasError => error.isNotEmpty;

  //Verifica se exite um barcode
  bool get hasBarcode => barcode.isNotEmpty;
}
