import 'dart:convert';

class GetAdvice {
  Slip slip;

  GetAdvice({required this.slip});

  factory GetAdvice.fromRawJson(String str) =>
      GetAdvice.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetAdvice.fromJson(Map<String, dynamic> json) =>
      GetAdvice(slip: Slip.fromJson(json["slip"]));

  Map<String, dynamic> toJson() => {"slip": slip.toJson()};
  @override
  String toString() {
    return 'Advice: ${slip.advice} (ID: ${slip.id})';
  }
}

class Slip {
  int id;
  String advice;

  Slip({required this.id, required this.advice});

  factory Slip.fromRawJson(String str) => Slip.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Slip.fromJson(Map<String, dynamic> json) =>
      Slip(id: json["id"], advice: json["advice"]);

  Map<String, dynamic> toJson() => {"id": id, "advice": advice};
}
