import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream DedyBayu',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color color = Colors.deepPurple;
  late ColorStream colorStream;

  int lastNumber = 0;
  late StreamController<int> numberStreamController;
  late NumberStrean numberStream;

  late StreamTransformer transformer;

  

  void changeColor() async {
    await for (var eventColor in colorStream.getColor()) {
      setState(() {
        color = eventColor;
      });
    }
  }

  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
    // numberStream.addError();
  }

  @override
  void initState() {
    numberStream = NumberStrean();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;



    transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (value, sink) {
        sink.add(value * 10);
      },
      handleError: (error, trace, sink) {
        sink.add(-1);
      },
      handleDone: (sink) => sink.close()
    );
    // stream
    //     .listen((event) {
    //       setState(() {
    //         lastNumber = event;
    //       });
    //     })
    //     .onError((error) {
    //       setState(() {
    //         lastNumber = -1;
    //       });
    //     });

    stream
        .transform(transformer)
        .listen((event) {
          setState(() {
            lastNumber = event;
          });
        })
        .onError((error) {
          setState(() {
            lastNumber = -1;
          });
        });

    super.initState();
    // colorStream = ColorStream();
    // changeColor();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream DedyBayu'),
        backgroundColor: color,
        foregroundColor: Colors.white,
      ),
      // body: Container(decoration: BoxDecoration(color: color)),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastNumber.toString()),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: Text('New Random Number'),
            ),
          ],
        ),
      ),
    );
  }
}
