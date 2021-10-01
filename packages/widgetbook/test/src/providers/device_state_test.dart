import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widgetbook/src/providers/injected_theme_state.dart';

void main() {
  group(
    '$InjectedThemeState',
    () {
      test(
        'returns true when instance is the same',
        () {
          var instance = InjectedThemeState(
            lightTheme: ThemeData(),
            darkTheme: ThemeData(),
          );

          expect(
            instance == instance,
            equals(true),
          );
        },
      );

      group(
        'returns true when',
        () {
          test(
            'two instances with the same values are compared',
            () {
              var instance1 = InjectedThemeState(
                lightTheme: ThemeData(),
                darkTheme: ThemeData(),
              );

              var instance2 = InjectedThemeState(
                lightTheme: ThemeData(),
                darkTheme: ThemeData(),
              );

              expect(
                instance1 == instance2,
                equals(true),
              );
            },
          );

          test(
            'the hashCodes of two instances with the same values are compared',
            () {
              var instance1 = InjectedThemeState(
                lightTheme: ThemeData(),
                darkTheme: ThemeData(),
              );

              var instance2 = InjectedThemeState(
                lightTheme: ThemeData(),
                darkTheme: ThemeData(),
              );

              expect(
                instance1.hashCode == instance2.hashCode,
                equals(true),
              );
            },
          );
        },
      );
    },
  );
}
