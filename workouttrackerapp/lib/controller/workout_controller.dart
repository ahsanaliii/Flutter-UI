import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workouttrackerapp/model/workout_model.dart';

class WorkoutController extends GetxController {
  var workouts = <WorkoutModel>[].obs;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.onInit();
    loadLocalData();
    fetchFromFirestore();
  }

  // add a new workout

  void addWorkOut(WorkoutModel workoutModel) {
    workouts.add(workoutModel);
    saveLocalData();
    saveToFirestore(workoutModel);
  }

  //remove a workout
  void removeWorkOut(String id) {
    workouts.removeWhere((workout) => workout.id == id);
    saveLocalData();
    deleteFromFireStore(id);
  }

  // save workout in sharedpreferences
  Future<void> saveLocalData() async {
    final prefs = await SharedPreferences.getInstance();
    final workoutList = workouts.map((e) => jsonEncode(e.toJson())).toList();
    await prefs.setStringList("workouts", workoutList);
  }

  // load workouts from local storage
  Future<void> loadLocalData() async {
    final prefs = await SharedPreferences.getInstance();
    final workoutList = prefs.getStringList("workouts") ?? [];
    workouts.assignAll(
      workoutList.map((e) => WorkoutModel.fromJson(jsonDecode(e))).toList(),
    );
  }

  //sync data with firestore

  Future<void> saveToFirestore(WorkoutModel workoutModel) async {
    await _firestore
        .collection("workouts")
        .doc(workoutModel.id)
        .set(workoutModel.toJson());
  }

  Future<void> fetchFromFirestore() async {
    final snapshot = await _firestore.collection("workouts").get();
    workouts.assignAll(
      snapshot.docs.map((doc) => WorkoutModel.fromJson(doc.data())).toList(),
    );
  }

  Future<void> deleteFromFireStore(String id) async {
    await _firestore.collection("workouts").doc(id).delete();
  }
}
