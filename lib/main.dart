import 'package:flutter/material.dart';
import 'screens/student_form_screen.dart';

void main() {
  runApp(const StudentFormApp());
}

class StudentFormApp extends StatelessWidget {
  const StudentFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'عمل الطالب رشاد عادل شرهان',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFDC2626), // Crimson Red
          brightness: Brightness.light,
        ),
        fontFamily: 'Roboto',
        cardTheme: CardThemeData(
          surfaceTintColor: Colors.white,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          color: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFDC2626), width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.red.shade700),
          ),
          filled: true,
          fillColor: Colors.grey.shade50,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFDC2626),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 14),
            elevation: 0,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFFDC2626),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: const Color(0xFFDC2626).withValues(alpha: 0.5)),
            ),
            padding: const EdgeInsets.symmetric(vertical: 14),
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const Color(0xFFDC2626);
            }
            return Colors.transparent;
          }),
          checkColor: WidgetStateProperty.all(Colors.white),
          side: BorderSide(color: Colors.grey.shade400, width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const Color(0xFFDC2626);
            }
            return Colors.grey.shade400;
          }),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const Color(0xFFDC2626);
            }
            return Colors.grey.shade400;
          }),
          trackColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const Color(0xFFDC2626).withValues(alpha: 0.3);
            }
            return Colors.grey.shade300;
          }),
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: const Color(0xFFDC2626),
          inactiveTrackColor: const Color(0xFFDC2626).withValues(alpha: 0.2),
          thumbColor: const Color(0xFFDC2626),
          overlayColor: const Color(0xFFDC2626).withValues(alpha: 0.1),
          valueIndicatorColor: const Color(0xFFDC2626),
          valueIndicatorTextStyle: const TextStyle(color: Colors.white),
        ),
      ),
      home: const StudentFormScreen(),
    );
  }
}
