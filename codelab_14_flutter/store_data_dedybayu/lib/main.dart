import 'package:flutter/material.dart';
import 'package:store_data_dedybayu/httphelper.dart';
import 'package:store_data_dedybayu/models/pizza.dart';
import 'package:store_data_dedybayu/pizza_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PizzaPage(),
    );
  }
}

class PizzaPage extends StatefulWidget {
  const PizzaPage({super.key});

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  List<Pizza> pizzas = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadPizzasFromApi();
  }

  Future<void> loadPizzasFromApi() async {
    final data = await callPizzas();

    setState(() {
      pizzas = data;
      isLoading = false;
    });
  }

  Future<List<Pizza>> callPizzas() async {
    HttpHelper helper = HttpHelper();
    return await helper.getPizzaList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Pizza DedyBayu"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: pizzas.length,
              itemBuilder: (context, index) {
                final p = pizzas[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: p.imageUrl.isNotEmpty
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              p.imageUrl,
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) =>
                                  const Icon(Icons.image),
                            ),
                          )
                        : const Icon(Icons.local_pizza, size: 40),

                    title: Text(
                      p.pizzaName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),

                    subtitle: Text(p.description),

                    trailing: Text(
                      "\$${p.price}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                );
              },
            ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PizzaDetailScreen(),
            ),
          );
        },
      ),
    );
  }
}
