import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import 'package:workouttrackerapp/controller/workout_controller.dart';
import 'package:workouttrackerapp/model/workout_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final WorkoutController workoutController = Get.put(WorkoutController());

  final TextEditingController exerciseController = TextEditingController();
  final TextEditingController setController = TextEditingController();
  final TextEditingController repsController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("WorkOut Tracker"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: workoutController.workouts.length,
                    itemBuilder: (context, index) {
                      final workout = workoutController.workouts[index];
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          color: const Color.fromARGB(255, 183, 226, 222),
                          child: ListTile(
                            dense: true,
                            title: Text(
                              workout.exercise,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(
                              "Sets : ${workout.sets},  Reps: ${workout.reps} , Weight : ${workout.weight} kg",
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                workoutController.removeWorkOut(workout.id);
                              },
                              icon: Icon(Icons.delete, color: Colors.red),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _showAddWorkDialog(context);
                  // exerciseController.text = "";
                  // setController.text = "";
                  // repsController.text = "";
                  // weightController.text = "";
                },
                child: Text("Add Workout"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAddWorkDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("Add Workout"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: exerciseController,
                  decoration: InputDecoration(labelText: "Exercise"),
                ),
                TextField(
                  controller: setController,
                  decoration: InputDecoration(labelText: "sets"),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: repsController,
                  decoration: InputDecoration(labelText: "reps"),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: weightController,
                  decoration: InputDecoration(labelText: "weight (kg)"),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  final workoutModel = WorkoutModel(
                    id: Uuid().v4(),
                    exercise: exerciseController.text,
                    sets: int.parse(setController.text),
                    reps: int.parse(repsController.text),
                    weight: double.parse(weightController.text),
                  );
                  workoutController.addWorkOut(workoutModel);
                  Navigator.pop(context);
                },
                child: Text("add"),
              ),
            ],
          ),
    );
  }
}
