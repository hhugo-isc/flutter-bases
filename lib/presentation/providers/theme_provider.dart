import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetsapp/config/theme/app_theme.dart';

// Estado: isDarkModeProvider
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

final selectedColorIndexProvider = StateProvider((ref) => 0);
