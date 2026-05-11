import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shared/router/app_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: DolphiApp(),
    ),
  );
}

class DolphiApp extends ConsumerWidget {
  const DolphiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Dolphi',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, // Forced Light Mode
      theme: ThemeData(
        textTheme: GoogleFonts.plusJakartaSansTextTheme(),
        scaffoldBackgroundColor: const Color(0xFFF9FAFC), // Slight off-white to make inputs pop
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF40B876), // The green from the mockup
          primary: const Color(0xFF40B876),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
