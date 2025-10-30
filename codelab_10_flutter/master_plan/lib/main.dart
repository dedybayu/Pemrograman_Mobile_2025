import 'package:flutter/material.dart';
import 'package:master_plan/models/data_layer.dart';
import 'package:master_plan/provider/plan_provider.dart';
import 'package:master_plan/views/plan_creator_screen.dart';

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //  theme: ThemeData(primarySwatch: Colors.deepPurple),
    //  home: PlanScreen(),
    //  debugShowCheckedModeBanner: false,
    // );

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(primarySwatch: Colors.purple),
    //   home: PlanProvider(
    //     notifier: ValueNotifier<Plan>(const Plan()),
    //     child: const PlanScreen(),
    //   ),
    // );

    return PlanProvider(
      // notifier: ValueNotifier<List<Plan>>(const []),
      notifier: ValueNotifier<List<Plan>>([]),

      child: MaterialApp(
        title: 'State management app',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
