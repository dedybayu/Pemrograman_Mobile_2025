import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'displaypicture_screen.dart';

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({super.key, required this.camera});

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // Membuat controller kamera
    _controller = CameraController(widget.camera, ResolutionPreset.medium);

    // Inisialisasi controller
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Hapus controller saat widget dihapus
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a picture - 2341720041')),
      // FutureBuilder untuk menunggu kamera siap
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Jika sudah siap, tampilkan preview kamera
            return CameraPreview(_controller);
          } else {
            // Jika belum siap, tampilkan loading spinner
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: TakePhotoButton(
        initializeControllerFuture: _initializeControllerFuture,
        controller: _controller,
      ),
    );
  }
}

class TakePhotoButton extends StatelessWidget {
  const TakePhotoButton({
    super.key,
    required Future<void> initializeControllerFuture,
    required CameraController controller,
  }) : _initializeControllerFuture = initializeControllerFuture,
       _controller = controller;

  final Future<void> _initializeControllerFuture;
  final CameraController _controller;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        try {
          // Pastikan kamera sudah diinisialisasi
          await _initializeControllerFuture;

          // Ambil gambar dan simpan ke file sementara
          final image = await _controller.takePicture();

          if (!context.mounted) return;

          // Tampilkan gambar di layar baru
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DisplayPictureScreen(imagePath: image.path),
            ),
          );
        } catch (e) {
          // Tangani error
          print('Error saat mengambil gambar: $e');
        }
      },
      child: const Icon(Icons.camera_alt),
    );
  }
}
