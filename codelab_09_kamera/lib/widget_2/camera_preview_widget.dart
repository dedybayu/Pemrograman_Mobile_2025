import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPreviewWidget extends StatefulWidget {
  final Color? filterColor;
  final double filterOpacity;

  const CameraPreviewWidget({
    super.key,
    this.filterColor,
    this.filterOpacity = 0.3,
  });

  @override
  State<CameraPreviewWidget> createState() => _CameraPreviewWidgetState();
}

class _CameraPreviewWidgetState extends State<CameraPreviewWidget> {
  CameraController? _cameraController;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initCamera();
  }

  Future<void> _initCamera() async {
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        throw Exception('Tidak ada kamera yang tersedia');
      }

      _cameraController = CameraController(
        cameras.first,
        ResolutionPreset.medium,
        enableAudio: false,
      );

      await _cameraController!.initialize();
    } on CameraException catch (e) {
      debugPrint('Error inisialisasi kamera: $e');
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              'Gagal memuat kamera',
              style: const TextStyle(color: Colors.white),
            ),
          );
        }

        if (_cameraController == null || !_cameraController!.value.isInitialized) {
          return const Center(child: Text('Kamera belum siap'));
        }

        return ColorFiltered(
          colorFilter: ColorFilter.mode(
            (widget.filterColor ?? Colors.white).withOpacity(widget.filterOpacity),
            BlendMode.color,
          ),
          child: CameraPreview(_cameraController!),
        );
      },
    );
  }
}
