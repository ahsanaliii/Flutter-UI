import 'package:flutter/material.dart';

class Market {
  final String name;
  final String timezone; // Example: 'America/New_York'
  final TimeOfDay open;
  final TimeOfDay close;

  Market({
    required this.name,
    required this.timezone,
    required this.open,
    required this.close,
  });
}
