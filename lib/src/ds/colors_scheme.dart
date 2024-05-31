part of 'ds.dart';

class CustomColorScheme with Diagnosticable {
  final Color primary;
  final Color secondary;
  final Color danger;
  final Color warning;
  final Color success;

  CustomColorScheme({
    required this.primary,
    required this.secondary,
    required this.danger,
    required this.warning,
    required this.success,
  });

  CustomColorScheme copyWith({
    Color? primary,
    Color? secondary,
    Color? danger,
    Color? warning,
    Color? success,
  }) =>
      CustomColorScheme(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        danger: danger ?? this.danger,
        warning: warning ?? this.warning,
        success: success ?? this.success,
      );
}
