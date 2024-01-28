

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutable (nunca va a cambiar)
final colorListProvider = Provider((ref) => colorList);


// Un simple booleano
final isDarkmodeProvider = StateProvider( (ref) => false );

// Un simple entero
final selectedColorProvider = StateProvider( (ref) => 0 );

// Un objeto de tipo AppTheme (personalizado)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controler o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // El Sate o estado es igual a una nueva instancia del AppThem
  ThemeNotifier(): super( AppTheme() );

  void toggleDarkmode() {
    state = state.copyWith( isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith( selectedColor: colorIndex);
  }

}