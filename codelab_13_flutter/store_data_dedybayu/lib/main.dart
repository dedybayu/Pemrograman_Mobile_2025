import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:store_data_dedybayu/model/pizza.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String pizzaString = '';
  List<Pizza> myPizzas = [];
  String convertToJSON(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((pizza) => pizza.toJson()).toList());
  }

  @override
  void initState() {
    super.initState();
    readJsonFile().then((value) {
      setState(() {
        myPizzas = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    loadJsonPizza();
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON DedyBayu'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        itemCount: myPizzas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(myPizzas[index].pizzaName),
            subtitle: Text(myPizzas[index].description),
          );
        },
      ),
    );
  }

  Future<void> loadJsonPizza() async {
    pizzaString = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/pizza_list.json');
    setState(() {});
  }

  Future<List<Pizza>> readJsonFile() async {
    String jsonString = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/pizza_list.json');
    List pizzaMapList = jsonDecode(jsonString);

    List<Pizza> myPizzas = [];
    for (var pizzaMap in pizzaMapList) {
      Pizza myPizza = Pizza.fromJson(pizzaMap);
      myPizzas.add(myPizza);
    }
    String json = convertToJSON(myPizzas);
    print(json);
    return myPizzas;
  }
}
