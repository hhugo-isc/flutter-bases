import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/config/theme/app_theme.dart';

//listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Estado: isDarkModeProvider
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Estado: color seleccionado
final selectedColorIndexProvider = StateProvider((ref) => 0);

// un objeto de tipo apptheme
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = ESTADO = new AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
