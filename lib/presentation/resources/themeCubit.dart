import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:packages/presentation/resources/themes.dart';

class Themecubit extends Cubit<Themes> {
  Themecubit() : super(LightTheme());
  void toggle() {
    if (state is DarkTheme) {
      emit(LightTheme());
    } else {
      emit(DarkTheme());
    }
  }
}
