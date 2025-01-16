import 'dart:convert';
import 'package:flutter/services.dart'; // For rootBundle
import '../models/intent.dart';

class IntentService {
  // This method will load the intents from the local JSON file
  Future<List<Intent>> fetchIntents() async {
    try {
      // Load the JSON file from the assets folder
      final String response = await rootBundle.loadString('assets/intents.json');

      // Parse the JSON string to a Map
      final data = json.decode(response) as Map<String, dynamic>;

      // Convert the 'intents' data into a List of Intent objects
      return (data['intents'] as List)
          .map((intentJson) => Intent.fromJson(intentJson))
          .toList();
    } catch (error) {
      // Handle errors (e.g., file not found, invalid JSON format)
      print("Error loading intents: $error");
      return [];
    }
  }
}
