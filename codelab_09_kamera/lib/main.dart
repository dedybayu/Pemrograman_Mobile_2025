// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'widget/takepicture_screen.dart';

// Future<void> main() async {

//   WidgetsFlutterBinding.ensureInitialized();

//   final cameras = await availableCameras();

//   final firstCamera = cameras.first;

//   runApp(
//     MaterialApp(
//       theme: ThemeData.dark(),
//       debugShowCheckedModeBanner: false,
//       home: TakePictureScreen(
//         camera: firstCamera,
//       ),
//     ),
//   );
// }


import 'package:flutter/material.dart';
import 'widget/filter_carousel.dart';

void main() {
  runApp(
    const MaterialApp(
      home: PhotoFilterCarousel(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
