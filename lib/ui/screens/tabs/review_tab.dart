import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../molecules/review_summary_card.dart';

class ReviewTab extends StatelessWidget {
  const ReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFC),
      appBar: AppBar(
        title: const Text(
          'Review Hub',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(24, 10, 24, 120),
        children: [
          // Daily Goal Section
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: CircularProgressIndicator(
                        value: 0.65,
                        strokeWidth: 8,
                        backgroundColor: Colors.white.withValues(alpha: 0.2),
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                    const Text(
                      '65%',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 24),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily Goal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '12 of 20 cards reviewed.\nKeep it up!',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ).animate().fade().scale(),
          const SizedBox(height: 32),
          const Text(
            'Ready to Study',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ).animate().fade().slideX(begin: -0.1),
          const SizedBox(height: 16),
          ReviewSummaryCard(
            title: 'Flashcards',
            subtitle: '15 cards due today',
            icon: Icons.style,
            color: Colors.orangeAccent,
            onTap: () {},
          ).animate(delay: 200.ms).fade().slideY(begin: 0.1),
          const SizedBox(height: 12),
          ReviewSummaryCard(
            title: 'Spaced Repetition',
            subtitle: '8 critical items',
            icon: Icons.history_edu,
            color: Colors.blueAccent,
            onTap: () {},
          ).animate(delay: 300.ms).fade().slideY(begin: 0.1),
          const SizedBox(height: 12),
          ReviewSummaryCard(
            title: 'Quick Quiz',
            subtitle: 'Generate from Topics',
            icon: Icons.quiz_outlined,
            color: const Color(0xFF40B876),
            onTap: () {},
          ).animate(delay: 400.ms).fade().slideY(begin: 0.1),
        ],
      ),
    );
  }
}
