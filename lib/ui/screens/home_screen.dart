import 'package:flutter/material.dart';
import 'tabs/topics_tab.dart';
import 'tabs/review_tab.dart';
import 'tabs/bookmarks_tab.dart';
import 'tabs/settings_tab.dart';
import 'tabs/search_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2; // Default to Home (Topics)

  final List<Widget> _tabs = const [
    ReviewTab(),
    SearchTab(),
    TopicsTab(),
    BookmarksTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentIndex,
        children: _tabs,
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
          child: SizedBox(
            height: 94,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // The white pill bar
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildNavItem(0, Icons.school_outlined),
                            _buildNavItem(1, Icons.search),
                          ],
                        ),
                      ),
                      const SizedBox(width: 84), // Space for FAB
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildNavItem(3, Icons.bookmark_outline),
                            _buildNavItem(4, Icons.build_circle_outlined),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // The center HOME FAB
                Positioned(
                  top: 0,
                  child: Container(
                    width: 84,
                    height: 84,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF9FAFC),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 64,
                      width: 64,
                      child: FloatingActionButton(
                        heroTag: 'home_nav_fab',
                        onPressed: () => setState(() => _currentIndex = 2),
                        backgroundColor: primaryColor,
                        elevation: 6,
                        shape: const CircleBorder(),
                        child: Icon(
                          Icons.library_books,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                // Active dot for the center Home button
                if (_currentIndex == 2)
                  Positioned(
                    bottom: 12,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Colors.white, // Dot on top of the green button area or below?
                        // The image showed a green dot below the FAB.
                        // But the FAB area is covered by the white bar's notch.
                        // Let's put the dot at the very bottom of the bar.
                      ),
                    ),
                  ),
                // Let's refine the dot for index 2
                if (_currentIndex == 2)
                  Positioned(
                    bottom: 14,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon) {
    final isSelected = _currentIndex == index;
    final primaryColor = Theme.of(context).colorScheme.primary;

    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? primaryColor : Colors.grey.shade400,
              size: 28,
            ),
            const SizedBox(height: 6),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: isSelected ? 1.0 : 0.0,
              child: Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
