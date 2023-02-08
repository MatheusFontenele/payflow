import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvailable;
  final String error;
  final String barcode;

  CameraController? cameraController;

  BarcodeScannerStatus({
    this.isCameraAvailable = false,
    this.cameraController,
    this.barcode = "",
    this.error = "",
  });

  factory BarcodeScannerStatus.available(CameraController cameraController) =>
      BarcodeScannerStatus(
        isCameraAvailable: true,
        cameraController: cameraController,
      );

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message);

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode);

  //valida se a camera pode ser habilitada
  bool get canShowCamera => isCameraAvailable && error.isEmpty;

  //verifica se ha erros
  bool get hasError => error.isNotEmpty;

  //Verifica se exite um barcode
  bool get hasBarcode => barcode.isNotEmpty;
}
