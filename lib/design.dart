import 'package:flutter/material.dart';

/// Цветовая схема Eclipse
class EclipseColors {
  static const Color background = Color(0xFF1A1A1A);
  static const Color accent = Color(0xFFFFD700);
  static const Color secondary = Color(0xFF6B46C1);
  static const Color text = Color(0xFFFFFFFF);
  static const Color success = Color(0xFF10B981);
  static const Color danger = Color(0xFFEF4444);
  static const Color auraHeroic = Color(0xFFFFD700);
  static const Color auraNeutral = Color(0xFFC0C0C0);
  static const Color auraDark = Color(0xFFEF4444);
}

/// Градиенты для фонов и карточек
class EclipseGradients {
  static const LinearGradient main = LinearGradient(
    colors: [
      Color(0xFF1A1A1A),
      Color(0xFF6B46C1),
      Color(0xFFFFD700),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient category = LinearGradient(
    colors: [
      Color(0xFF1A1A1A),
      Color(0xFF6B46C1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

/// Типографика (SF Pro Display/Text, Roboto как fallback)
class EclipseTextStyles {
  static const TextStyle headline = TextStyle(
    fontFamily: 'SFProDisplay',
    fontWeight: FontWeight.bold,
    fontSize: 32,
    color: EclipseColors.text,
    letterSpacing: 1.2,
  );
  static const TextStyle title = TextStyle(
    fontFamily: 'SFProDisplay',
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: EclipseColors.text,
  );
  static const TextStyle body = TextStyle(
    fontFamily: 'SFProText',
    fontWeight: FontWeight.normal,
    fontSize: 18,
    color: EclipseColors.text,
  );
  static const TextStyle choice = TextStyle(
    fontFamily: 'SFProText',
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: EclipseColors.text,
  );
  static const TextStyle small = TextStyle(
    fontFamily: 'SFProText',
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: EclipseColors.text,
  );
}

/// Гайдлайн по эмодзи
class EmojiGuideline {
  static const double category = 24; // Категории (крупные)
  static const double choice = 18;   // Варианты выбора (средние)
  static const double ui = 16;       // UI элементы (мелкие)
}

/// Пример темы для кнопок и карточек
final ButtonStyle eclipseButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: EclipseColors.secondary,
  foregroundColor: EclipseColors.text,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  textStyle: EclipseTextStyles.choice,
  elevation: 4,
);

final CardTheme eclipseCardTheme = CardTheme(
  color: EclipseColors.background,
  elevation: 6,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
);