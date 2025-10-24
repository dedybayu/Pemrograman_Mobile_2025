import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'widget/takepicture_screen.dart';

Future<void> main() async {
  // Pastikan plugin sudah diinisialisasi
  WidgetsFlutterBinding.ensureInitialized();

  // Dapatkan daftar kamera yang tersedia di perangkat
  final cameras = await availableCameras();

  // Pilih kamera pertama (biasanya kamera belakang)
  final firstCamera = cameras.first;

  // Jalankan aplikasi
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: TakePictureScreen(
        // Kirim kamera ke w idget utama
        camera: firstCamera,
      ),
    ),
  );
}


// import 'package:flutter/material.dart';
// import 'widget/filter_carousel.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: PhotoFilterCarousel(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }
