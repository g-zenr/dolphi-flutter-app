import 'package:flutter/material.dart';

class Topic {
  final String id;
  final String title;
  final String description;
  final int documentCount;
  final int flashcardCount;
  final double masteryProgress; // 0.0 to 1.0
  final DateTime lastStudied;
  final Color? color;

  const Topic({
    required this.id,
    required this.title,
    required this.description,
    this.documentCount = 0,
    this.flashcardCount = 0,
    this.masteryProgress = 0.0,
    required this.lastStudied,
    this.color,
  });
}

// Mock Data
final mockTopics = [
  Topic(
    id: '1',
    title: 'Flutter Architecture',
    description: 'Clean Architecture, Riverpod, and Atomic Design patterns.',
    documentCount: 12,
    flashcardCount: 45,
    masteryProgress: 0.85,
    lastStudied: DateTime.now().subtract(const Duration(hours: 2)),
    color: const Color(0xFF40B876),
  ),
  Topic(
    id: '2',
    title: 'SQLite Optimization',
    description: 'Indexes, transactions, and performant local storage.',
    documentCount: 5,
    flashcardCount: 20,
    masteryProgress: 0.45,
    lastStudied: DateTime.now().subtract(const Duration(days: 1)),
    color: Colors.blueAccent,
  ),
  Topic(
    id: '3',
    title: 'Dart Generics',
    description: 'Understanding types, bounds, and advanced generics.',
    documentCount: 3,
    flashcardCount: 15,
    masteryProgress: 0.12,
    lastStudied: DateTime.now().subtract(const Duration(days: 3)),
    color: Colors.orangeAccent,
  ),
];
