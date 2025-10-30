import 'package:flutter/material.dart';
import '../../models/data_layer.dart';

class AddTaskButton extends StatelessWidget {
  final Plan plan;
  final ValueChanged<Plan> onPlanUpdated;

  const AddTaskButton({
    super.key,
    required this.plan,
    required this.onPlanUpdated,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        onPlanUpdated(
          Plan(
            name: plan.name,
            tasks: List<Task>.from(plan.tasks)..add(const Task()),
          ),
        );
      },
    );
  }

  
}
