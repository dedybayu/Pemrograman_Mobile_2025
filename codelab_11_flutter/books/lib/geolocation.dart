import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';

  @override
  void initState() {
    super.initState();
    getMyPosition();
  }

  Future<void> getMyPosition() async {
    setState(() {
      myPosition = '';
    });

    await Future.delayed(const Duration(seconds: 3));

    // Ambil posisi
    Position myPos = await getPosition();

    setState(() {
      myPosition =
          'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
    });
  }

  @override
  Widget build(BuildContext context) {
    final myWidget = myPosition == ''
        ? const CircularProgressIndicator()
        : Text(myPosition);
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location DedyBayu')),
      body: Center(child: myWidget),
    );
  }

  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position? position = await Geolocator.getCurrentPosition();
    return position!;
  }
}
