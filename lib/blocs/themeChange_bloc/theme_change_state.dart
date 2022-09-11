// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'theme_change_bloc.dart';

class ThemeChangeState extends Equatable {
  final bool switchValue;
  const ThemeChangeState({required this.switchValue});

  @override
  List<Object> get props => [switchValue];

  Map<String, dynamic> toMap() {
    return {
      'switchValue': switchValue,
    };
  }

  factory ThemeChangeState.fromMap(Map<String, dynamic> map) {
    return ThemeChangeState(
      switchValue: map['switchValue'] ?? false,
    );
  }
}

class ThemeChangeInitial extends ThemeChangeState {
  const ThemeChangeInitial({required super.switchValue});
}
