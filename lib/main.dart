import 'package:flutter/material.dart';
import 'design.dart';

void main() {
  runApp(const EclipseApp());
}

class EclipseApp extends StatelessWidget {
  const EclipseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eclipse',
      theme: ThemeData(
        scaffoldBackgroundColor: EclipseColors.background,
        fontFamily: 'SFProText',
        cardTheme: eclipseCardTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(style: eclipseButtonStyle),
        textTheme: const TextTheme(
          headlineLarge: EclipseTextStyles.headline,
          titleLarge: EclipseTextStyles.title,
          bodyLarge: EclipseTextStyles.body,
          bodyMedium: EclipseTextStyles.choice,
          bodySmall: EclipseTextStyles.small,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: EclipseColors.secondary,
          background: EclipseColors.background,
          primary: EclipseColors.accent,
          secondary: EclipseColors.secondary,
        ),
        useMaterial3: true,
      ),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: EclipseGradients.main,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 32),
              // Заголовок с мерцающими звездами (заглушка)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Eclipse', style: EclipseTextStyles.headline),
                  const SizedBox(width: 12),
                  Text('✨', style: TextStyle(fontSize: EmojiGuideline.category)),
                ],
              ),
              const SizedBox(height: 40),
              // Категории приключений
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                  children: [
                    CategoryCard(
                      emoji: '🏰',
                      title: 'Фэнтези RPG',
                      subtitle: 'Королевства и драконы',
                      gradient: EclipseGradients.category,
                    ),
                    const SizedBox(height: 16),
                    CategoryCard(
                      emoji: '💕',
                      title: 'Романтика',
                      subtitle: 'Любовь сквозь время',
                      gradient: EclipseGradients.category,
                    ),
                    const SizedBox(height: 16),
                    CategoryCard(
                      emoji: '🚀',
                      title: 'Научная фантастика',
                      subtitle: 'Звездные империи',
                      gradient: EclipseGradients.category,
                    ),
                    const SizedBox(height: 16),
                    CategoryCard(
                      emoji: '🔍',
                      title: 'Детектив/Триллер',
                      subtitle: 'Тайны города',
                      gradient: EclipseGradients.category,
                    ),
                    const SizedBox(height: 16),
                    CategoryCard(
                      emoji: '🗺️',
                      title: 'Приключения',
                      subtitle: 'Затерянные миры',
                      gradient: EclipseGradients.category,
                    ),
                    const SizedBox(height: 16),
                    CategoryCard(
                      emoji: '🎭',
                      title: 'Хоррор',
                      subtitle: 'Проклятые места',
                      gradient: EclipseGradients.category,
                    ),
                  ],
                ),
              ),
              // TODO: Добавить анимацию фона (Lottie)
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String emoji;
  final String title;
  final String subtitle;
  final Gradient gradient;

  const CategoryCard({
    super.key,
    required this.emoji,
    required this.title,
    required this.subtitle,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            Text(emoji, style: TextStyle(fontSize: EmojiGuideline.category)),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: EclipseTextStyles.title),
                  const SizedBox(height: 4),
                  Text(subtitle, style: EclipseTextStyles.body),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: EclipseColors.accent),
          ],
        ),
      ),
    );
  }
}
