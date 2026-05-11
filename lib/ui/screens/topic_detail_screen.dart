import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../shared/models/topic.dart';

class TopicDetailScreen extends StatelessWidget {
  final String topicId;

  const TopicDetailScreen({
    super.key,
    required this.topicId,
  });

  @override
  Widget build(BuildContext context) {
    // Find the topic from mock data
    final topic = mockTopics.firstWhere(
      (t) => t.id == topicId,
      orElse: () => mockTopics.first,
    );

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFC),
      appBar: AppBar(
        title: Text(topic.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topic.description,
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700, height: 1.5),
            ).animate().fade().slideY(begin: 0.1),
            const SizedBox(height: 32),
            const Text(
              'Content',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ).animate().fade(delay: 200.ms),
            const SizedBox(height: 16),
            _buildActionCard(
              context,
              'Flashcards',
              '${topic.flashcardCount} cards to study',
              Icons.style,
              Colors.orangeAccent,
              index: 0,
            ),
            const SizedBox(height: 12),
            _buildActionCard(
              context,
              'Documents',
              '${topic.documentCount} reference files',
              Icons.description,
              Colors.blueAccent,
              index: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color, {
    required int index,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Opening $title...')),
          );
        },
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(icon, color: color),
              ),
              title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(subtitle),
              trailing: const Icon(Icons.chevron_right_rounded),
            ),
          ),
        ),
      ),
    ).animate(delay: (300 + index * 100).ms).fade().slideY(begin: 0.1);
  }
}
