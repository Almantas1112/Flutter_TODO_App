part of 'theme_change_bloc.dart';

abstract class ThemeChangeEvent extends Equatable {
  const ThemeChangeEvent();

  @override
  List<Object> get props => [];
}

class SwitchOnEvent extends ThemeChangeEvent {}

class SwitchOffEvent extends ThemeChangeEvent {}
