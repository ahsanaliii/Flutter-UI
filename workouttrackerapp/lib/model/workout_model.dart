class WorkoutModel {
  String id;
  String exercise;
  int sets;
  int reps;
  double weight;

  WorkoutModel({
    required this.id,
    required this.exercise,
    required this.reps,
    required this.sets,
    required this.weight,
  });

  // Converting workout object to map for firestore
  Map<String, dynamic> toJson() => {
    "id": id,
    "exercise": exercise,
    "reps": reps,
    "sets": sets,
    "weight": weight,
  };

  // Create workout object form firestore document
  factory WorkoutModel.fromJson(Map<String, dynamic> json) => WorkoutModel(
    id: json["id"],
    exercise: json["exercise"],
    reps: json["reps"],
    sets: json["sets"],
    weight: json["weight"],
  );
}
