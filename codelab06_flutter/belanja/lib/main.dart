import 'package:flutter/material.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/product_page.dart';
import 'package:belanja/pages/preview_image.dart';
import 'package:go_router/go_router.dart';

// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/',
//     routes: {
//       '/': (context) => HomePage(),
//       '/product': (context) => ProductPage(),
//       '/preview-image': (context) => PreviewImage(),
//     },
//   ));
// }


void main() => runApp(const MyApp());

final GoRouter _router = GoRouter(
  initialLocation: '/', 
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(
      path: '/product',
      builder: (BuildContext context, GoRouterState state) => const ProductPage(),
    ),
    GoRoute(
      path: '/preview-image',
      builder: (BuildContext context, GoRouterState state) => const PreviewImage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}


