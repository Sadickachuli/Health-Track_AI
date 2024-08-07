import 'package:cloud_firestore/cloud_firestore.dart';

class Record {
  final String leadingCause;
  final String description;
  final String mood;
  final String started;
  final String symptom;
  final String title;
  final String userId;

  Record({
    required this.leadingCause,
    required this.description,
    required this.mood,
    required this.started,
    required this.symptom,
    required this.title,
    required this.userId,
  });

  factory Record.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Record(
      leadingCause: data['leadingCause'] ?? '',
      description: data['description'] ?? '',
      mood: data['mood'] ?? '',
      started: data['started'] ?? '',
      symptom: data['symptom'] ?? '',
      title: data['title'] ?? '',
      userId: data['userId'] ?? '',
    );
  }
}
