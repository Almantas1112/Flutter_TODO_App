import 'package:equatable/equatable.dart';

import '../bloc_exports.dart';

part 'theme_change_event.dart';
part 'theme_change_state.dart';

class ThemeChangeBloc extends HydratedBloc<ThemeChangeEvent, ThemeChangeState> {
  ThemeChangeBloc() : super(const ThemeChangeInitial(switchValue: false)) {
    on<SwitchOnEvent>((event, emit) {
      emit(
        const ThemeChangeState(switchValue: true),
      );
    });
    on<SwitchOffEvent>((event, emit) {
      emit(
        const ThemeChangeState(switchValue: false),
      );
    });
  }

  @override
  ThemeChangeState? fromJson(Map<String, dynamic> json) {
    return ThemeChangeState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeChangeState state) {
    return state.toMap();
  }
}
