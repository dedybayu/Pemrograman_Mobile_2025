import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'filter_selector.dart';
import 'displaypicture_screen.dart';

@immutable
class PhotoFilterCarousel extends StatefulWidget {
  final CameraDescription camera;

  const PhotoFilterCarousel({
    super.key,
    required this.camera,
  });

  @override
  State<PhotoFilterCarousel> createState() => _PhotoFilterCarouselState();
}

class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
  late CameraController _cameraController;

  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    _cameraController = CameraController(
      widget.camera,
      ResolutionPreset.medium,
      enableAudio: false,
    );

    await _cameraController.initialize();
    if (mounted) {
      setState(() => _isCameraInitialized = true);
    }
  }

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: !_isCameraInitialized
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                Positioned.fill(child: _buildCameraWithFilter()),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: _buildFilterSelector(),
                ),
              ],
            ),
    );
  }

  Widget _buildCameraWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, _) {
        return ColorFiltered(
          colorFilter: ColorFilter.mode(
            color.withOpacity(0.3),
            BlendMode.color,
          ),
          child: CameraPreview(_cameraController),
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
      onCapturePressed: _takePicture,
    );
  }

  Future<void> _takePicture() async {
  try {
    if (!_cameraController.value.isInitialized) return;

    final picture = await _cameraController.takePicture();

    if (!mounted) return;

    // Pindah ke halaman preview
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DisplayPictureScreen(imagePath: picture.path),
      ),
    );
  } catch (e) {
    print('Error mengambil gambar: $e');
  }
}

}
