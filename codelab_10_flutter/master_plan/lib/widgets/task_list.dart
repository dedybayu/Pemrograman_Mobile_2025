import 'package:flutter/material.dart';
import '../../models/data_layer.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  final Plan plan;
  final ScrollController scrollController;
  final ValueChanged<Plan> onPlanUpdated;

  const TaskList({
    super.key,
    required this.plan,
    required this.scrollController,
    required this.onPlanUpdated,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) => TaskTile(
        task: plan.tasks[index],
        index: index,
        plan: plan,
        onPlanUpdated: onPlanUpdated,
      ),
    );
  }
}
