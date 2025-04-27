import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Константы для цветов
  static const Color backgroundColor = Color(0xFF0C0C0C);
  static const Color selectedItemColor = Color(0xFF2B7EFE);
  static const Color unselectedItemColor = Color(0xFF9F9F9F);

  // Константы для текста
  static const String search = 'Поиск';
  static const String favorite = 'Избранное';
  static const String alerts = 'Отклики';
  static const String message = 'Сообщения';
  static const String person = 'Профиль';

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
