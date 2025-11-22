import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  int appCounter = 0;

  String documentPath = '';
  String tempPath = '';

  late File myFile;
  String fileText = '';

  final pwdController = TextEditingController();
  String myPass = '';

  final stoorge = const FlutterSecureStorage();
  final myKey = 'myPass';

  Future writeToSecureStorage() async {
    await stoorge.write(key: myKey, value: pwdController.text);
  }

  Future<String?> readFromSecureStorage() async {
    String secret = await stoorge.read(key: myKey) ?? '';
    return secret;
  }

  Future getPaths() async {
    final docDirectory = await getApplicationDocumentsDirectory();
    final tempDirectory = await getTemporaryDirectory();
    setState(() {
      documentPath = docDirectory.path;
      tempPath = tempDirectory.path;
    });
  }

  Future<bool> writeFile() async {
    try {
      await myFile.writeAsString('Margherita, Capricciosa, Napoli');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future readAndWritePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    appCounter = prefs.getInt('appCounter') ?? 0;
    appCounter++;
    await prefs.setInt('appCounter', appCounter);
  }

  Future deletePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() {
      appCounter = 0;
    });
  }

  String convertToJSON(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((pizza) => pizza.toJson()).toList());
  }

  Future<bool> readFile() async {
    try {
      String fileContent = await myFile.readAsString();
      setState(() {
        fileText = fileContent;
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  void initState() {
    getPaths().then((_) {
      myFile = File('$documentPath/pizza.txt');
      writeFile();
    });
    super.initState();

    // readAndWritePreference();
    // getPaths();
    // readJsonFile().then((value) {
    //   setState(() {
    //     // myPizzas = value;
    //     appCounter = appCounter;
    //   });
    // });
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

      // body: ListView.builder(
      //   itemCount: myPizzas.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text(myPizzas[index].pizzaName),
      //       subtitle: Text(myPizzas[index].description),
      //       trailing: Text('\$${myPizzas[index].price}'),
      //     );
      //   },
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('You have opened this app this many times:'),
      //       Text(
      //         '$appCounter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           deletePreference();
      //         },
      //         child: const Text('Reset Counter'),
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('Document Path: $documentPath'),
      //       Text('Temporary Path: $tempPath'),

      //       ElevatedButton(
      //         onPressed: () {
      //           readFile();
      //         },
      //         child: const Text('Read File'),
      //       ),
      //       Text('File Content: $fileText'),
      //     ],
      //   ),
      // ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(controller: pwdController),
            ElevatedButton(
              child: const Text('Save Value'),
              onPressed: () {
                writeToSecureStorage();
              },
            ),
            ElevatedButton(
              child: const Text('Read Value'),
              onPressed: () {
                readFromSecureStorage().then((value) {
                  setState(() {
                    myPass = value ?? '';
                  });
                });
              },
            ),
            Text('$myPass'),
          ],
      ),
    );
  }

  Future<void> loadJsonPizza() async {
    pizzaString = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/pizza_list_broken.json');
    setState(() {});
  }

  Future<List<Pizza>> readJsonFile() async {
    String jsonString = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/pizza_list_broken.json');
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
