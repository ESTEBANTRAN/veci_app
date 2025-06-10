// lib/app_theme.dart

import 'package:flutter/material.dart';


// Puedes definir tus colores personalizados aquí para usarlos fácilmente
class AppColors {
  static const Color primaryColor = Color(0xFF1ABC9C); // Un verde azulado vibrante
  static const Color accentColor = Color(0xFFF39C12); // Un naranja cálido
  static const Color textColor = Color(0xFF34495E);   // Un azul oscuro grisáceo
  static const Color lightGrey = Color(0xFFECF0F1);  // Gris claro para fondos
  static const Color darkGrey = Color(0xFF7F8C8D);    // Gris oscuro para texto secundario
  static const Color errorColor = Color(0xFFE74C3C);  // Rojo para errores
}

class AppTheme {
  // Tema Claro
  static ThemeData lightTheme = ThemeData(
    // 1. Esquema de colores (Color System)
    // Es la forma más moderna y recomendada de definir colores en Material Design 3
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor, // Color principal para generar la paleta
      brightness: Brightness.light,       // Indicamos que es un tema claro
      primary: AppColors.primaryColor,
      secondary: AppColors.accentColor,
      onPrimary: Colors.white,           // Color del texto/iconos sobre el primary
      onSecondary: Colors.white,         // Color del texto/iconos sobre el secondary
      surface: Colors.white,             // Color para superficies como Card, Dialog, etc.
      onSurface: AppColors.textColor,    // Color del texto/iconos sobre surface
      background: AppColors.lightGrey,   // Color de fondo general de la pantalla
      onBackground: AppColors.textColor, // Color del texto/iconos sobre background
      error: AppColors.errorColor,
      onError: Colors.white,
    ),

    // 2. Tipografía (Text Theme)
    // Define los estilos de texto predeterminados para tu aplicación
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.bold, color: AppColors.textColor),
      displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: AppColors.textColor),
      displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: AppColors.textColor),
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.textColor),
      headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.textColor),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.textColor),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: AppColors.textColor),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.textColor),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.textColor),
      bodyLarge: TextStyle(fontSize: 16, color: AppColors.textColor),
      bodyMedium: TextStyle(fontSize: 14, color: AppColors.textColor),
      bodySmall: TextStyle(fontSize: 12, color: AppColors.darkGrey),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.textColor),
      labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.darkGrey),
      labelSmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: AppColors.darkGrey),
    ),

    // 3. Estilo de componentes específicos (AppBar, ElevatedButton, etc.)
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white, // Color de los iconos y texto en el AppBar
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 4.0,
      centerTitle: true,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, // Color del texto del botón
        backgroundColor: AppColors.primaryColor, // Color de fondo del botón
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor, // Color del texto del TextButton
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryColor, // Color del texto del OutlinedButton
        side: const BorderSide(color: AppColors.primaryColor), // Color del borde
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 2.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: AppColors.darkGrey.withOpacity(0.5)),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      labelStyle: const TextStyle(color: AppColors.darkGrey),
      hintStyle: TextStyle(color: AppColors.darkGrey.withOpacity(0.7)),
      errorStyle: const TextStyle(color: AppColors.errorColor),
    ),

 

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.accentColor, // ¡CORREGIDO! Usando AppColors.accentColor
      foregroundColor: Colors.white,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.darkGrey,
      elevation: 8.0,
      type: BottomNavigationBarType.fixed, // O .shifting
      selectedLabelStyle: const TextStyle(fontSize: 12.0),
      unselectedLabelStyle: const TextStyle(fontSize: 11.0),
    ),

    // Puedes habilitar Material 3 explícitamente (es el valor por defecto en versiones recientes de Flutter)
    useMaterial3: true,
  );

  // Tema Oscuro (opcional, si quieres un modo oscuro)
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      secondary: AppColors.accentColor,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      surface: const Color(0xFF121212), // Un gris muy oscuro para superficies
      onSurface: Colors.white,
      background: const Color(0xFF1A1A1A), // Un gris oscuro para el fondo
      onBackground: Colors.white,
      error: AppColors.errorColor,
      onError: Colors.black,
    ),
    // Puedes copiar y ajustar los textThemes y otros componentes para el tema oscuro
    // O usar .copyWith() para heredar y solo modificar lo necesario
    textTheme: TextTheme(
      // Ejemplo: Hacer el texto principal más claro en el tema oscuro
      bodyLarge: const TextStyle(fontSize: 16, color: Colors.white),
      bodyMedium: const TextStyle(fontSize: 14, color: Colors.white70),
      // ... ajusta el resto según necesites
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor.withOpacity(0.8),
      foregroundColor: Colors.white,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 4.0,
      centerTitle: true,
    ),
    // ... otros componentes ajustados para el modo oscuro
    useMaterial3: true,
  );
}