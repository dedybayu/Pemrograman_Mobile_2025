import 'package:flutter/material.dart';
import '../../models/data_layer.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final int index;
  final Plan plan;
  final ValueChanged<Plan> onPlanUpdated;

  const TaskTile({
    super.key,
    required this.task,
    required this.index,
    required this.plan,
    required this.onPlanUpdated,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          onPlanUpdated(
            Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: task.description,
                  complete: selected ?? false,
                ),
            ),
          );
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          onPlanUpdated(
            Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            ),
          );
        },
      ),
    );
  }
}
