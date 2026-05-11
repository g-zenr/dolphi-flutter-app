import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../shared/models/topic.dart';
import '../../molecules/topic_card.dart';

class TopicsTab extends StatelessWidget {
  const TopicsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFC),
      appBar: AppBar(
        title: const Text(
          'My Library',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.sort, color: Colors.black87),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(24, 10, 24, 120), // Standardized 24px padding
        itemCount: mockTopics.length,
        itemBuilder: (context, index) {
          final topic = mockTopics[index];
          return TopicCard(
            topic: topic,
            onTap: () => context.push('/topic/${topic.id}'),
          ).animate(delay: (100 * index).ms).fade().slideY(begin: 0.1);
        },
      ),
    );
  }
}
