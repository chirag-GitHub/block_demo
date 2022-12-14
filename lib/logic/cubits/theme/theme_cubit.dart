import 'package:block_demo/logic/cubits/theme/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeLightState());

  Future<void> setTheme() async {
    if (1 == 1) {
      emit(ThemeLightState());
    } else {
      emit(ThemeDarkState());
    }
  }
}
