import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../shared/models/topic.dart';
import '../../molecules/topic_card.dart';

class BookmarksTab extends StatelessWidget {
  const BookmarksTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Just mock the first topic as bookmarked
    final bookmarkedTopics = [mockTopics[0]];

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFC),
      appBar: AppBar(
        title: const Text(
          'Bookmarks',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(24, 10, 24, 120),
        itemCount: bookmarkedTopics.length,
        itemBuilder: (context, index) {
          final topic = bookmarkedTopics[index];
          return TopicCard(
            topic: topic,
            onTap: () => context.push('/topic/${topic.id}'),
          ).animate().fade().slideY(begin: 0.1);
        },
      ),
    );
  }
}
