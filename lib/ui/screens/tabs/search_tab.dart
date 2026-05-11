import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../atoms/input_field.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFC),
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(24, 10, 24, 120),
        children: [
          const InputField(
            hintText: 'Search topics, cards, or notes...',
            prefixIcon: Icons.search,
          ).animate().fade().slideY(begin: -0.1),
          const SizedBox(height: 32),
          const Text(
            'Recent Searches',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildSearchChip('Flutter Riverpod'),
              _buildSearchChip('Dart Macros'),
              _buildSearchChip('Clean Architecture'),
              _buildSearchChip('Local LLMs'),
            ],
          ).animate().fade(delay: 200.ms),
          const SizedBox(height: 40),
          _buildCategoryItem(context, 'Popular Topics', Icons.trending_up, Colors.redAccent),
          _buildCategoryItem(context, 'Community Notes', Icons.people_outline, Colors.blueAccent),
          _buildCategoryItem(context, 'Advanced Techniques', Icons.bolt, Colors.amber),
        ],
      ),
    );
  }

  Widget _buildSearchChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, String title, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
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
          onTap: () {},
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 22),
              ),
              title: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              trailing: const Icon(Icons.chevron_right_rounded, size: 20, color: Colors.grey),
            ),
          ),
        ),
      ),
    ).animate().fade().slideX();
  }
}
