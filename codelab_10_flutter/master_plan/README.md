| No. Presensi | Nama               | NIM        | Kelas   |
| ------------ | ------------------ | ---------- | ------- |
| 08           | Dedy Bayu Setiawan | 2341720041 | TI - 3H |

<br>

# Praktikum 1: Mengambil Foto dengan Kamera di Flutter

## Langkah 1: Buat Project Baru
![Img_1_1](readme_img/image_1_1.png)

## Langkah 2: Membuat model task.dart
![Img_1_1](readme_img/image_1_2.png)


## Langkah 3: Buat file plan.dart
![Img_1_1](readme_img/image_1_3.png)


## Langkah 4: Buat file data_layer.dart
![Img_1_1](readme_img/image_1_4.png)


## Langkah 5: Pindah ke file main.dart
```dart
import 'package:flutter/material.dart';
import './views/plan_screen.dart';

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(primarySwatch: Colors.purple),
     home: PlanScreen(),
    );
  }
}
```


## Langkah 6: buat plan_screen.dart
```dart
import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  Plan plan = const Plan();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Master Plan DedyBayu')),
      body: _buildList(),
      floatingActionButton: _buildAddTaskButton(),
    );
  }
}
```

## Langkah 7: buat method _buildAddTaskButton()
![Img_1_1](readme_img/image_1_7.png)


## Langkah 8: buat widget _buildList()
![Img_1_1](readme_img/image_1_8.png)


## Langkah 9: buat widget _buildTaskTile
```dart
Widget _buildTaskTile(Task task, int index) {
  return ListTile(
    leading: Checkbox(
      value: task.complete,
      onChanged: (selected) {
        setState(() {
          plan = Plan(
            name: plan.name,
            tasks: List<Task>.from(plan.tasks)
              ..[index] = Task(
                description: task.description,
                complete: selected ?? false,
              ),
          );
        });
      },
    ),
    title: TextFormField(
      initialValue: task.description,
      onChanged: (text) {
        setState(() {
          plan = Plan(
            name: plan.name,
            tasks: List<Task>.from(plan.tasks)
              ..[index] = Task(description: text, complete: task.complete),
          );
        });
      },
    ),
  );
}
```

## Langkah 10: Tambah Scroll Controller
![Img_1_1](readme_img/image_1_10.png)


## Langkah 11: Tambah Scroll Listener
![Img_1_1](readme_img/image_1_11.png)


## Langkah 12: Tambah controller dan keyboard behavior
![Img_1_1](readme_img/image_1_12.png)


## Langkah 13: Terakhir, tambah method dispose()
![Img_1_1](readme_img/image_1_13.png)


##

##

##

##
