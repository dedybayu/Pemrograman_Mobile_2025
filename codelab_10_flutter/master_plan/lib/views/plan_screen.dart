import 'package:flutter/material.dart';
import '../models/data_layer.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late final ScrollController scrollController;

  Plan get plan => widget.plan;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          // cari plan aktif
          final currentPlan = plans.firstWhere(
            (p) => p.name == plan.name,
            orElse: () => plan,
          );

          return Column(
            children: [
              Expanded(child: _buildList(currentPlan, plansNotifier)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(plansNotifier),
    );
  }

  Widget _buildAddTaskButton(ValueNotifier<List<Plan>> planNotifier) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        final currentPlan = plan;
        final planIndex = planNotifier.value.indexWhere(
          (p) => p.name == currentPlan.name,
        );

        // tambahkan task baru
        final updatedTasks = List<Task>.from(currentPlan.tasks)
          ..add(const Task());

        // update list plan
        final updatedPlans = List<Plan>.from(planNotifier.value);
        updatedPlans[planIndex] =
            Plan(name: currentPlan.name, tasks: updatedTasks);

        // notify UI
        planNotifier.value = updatedPlans;
      },
    );
  }

  Widget _buildList(Plan plan, ValueNotifier<List<Plan>> planNotifier) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan, plan.tasks[index], index, planNotifier),
    );
  }

  Widget _buildTaskTile(
      Plan plan, Task task, int index, ValueNotifier<List<Plan>> planNotifier) {
    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          final planIndex = planNotifier.value.indexWhere(
            (p) => p.name == plan.name,
          );

          final updatedTasks = List<Task>.from(plan.tasks)
            ..[index] = Task(
              description: task.description,
              complete: selected ?? false,
            );

          final updatedPlans = List<Plan>.from(planNotifier.value);
          updatedPlans[planIndex] =
              Plan(name: plan.name, tasks: updatedTasks);

          planNotifier.value = updatedPlans;
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        decoration: const InputDecoration(
          hintText: 'Tuliskan deskripsi tugas...',
        ),
        onChanged: (text) {
          final planIndex = planNotifier.value.indexWhere(
            (p) => p.name == plan.name,
          );

          final updatedTasks = List<Task>.from(plan.tasks)
            ..[index] = Task(description: text, complete: task.complete);

          final updatedPlans = List<Plan>.from(planNotifier.value);
          updatedPlans[planIndex] =
              Plan(name: plan.name, tasks: updatedTasks);

          planNotifier.value = updatedPlans;
        },
      ),
    );
  }
}
