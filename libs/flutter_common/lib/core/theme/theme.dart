import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

part 'color_scheme.dark.dart';
part 'color_scheme.light.dart';
part 'theme.typography.dart';
part 'theme.typography.dark.dart';
part 'theme.input.dart';
part 'theme.input.dark.dart';

class AppTheme {
  static ThemeData light(String fontPrimary, String fontSecondary) {
    final localTextTheme = textTheme(fontPrimary, fontSecondary);
    return ThemeData(
      colorScheme: lightColorScheme,
      cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: ColorPalette.primary40,
      ),
      textTheme: localTextTheme,
      fontFamily: fontPrimary,
      scaffoldBackgroundColor: ColorPalette.neutralVariant99,
      inputDecorationTheme: inputTheme(fontPrimary, fontSecondary),
      dividerTheme: const DividerThemeData(color: ColorPalette.neutral95, thickness: 1.5),
      dividerColor: ColorPalette.neutral95,
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return lightColorScheme.onSurface.withOpacity(0.12);
              } else if (states.contains(MaterialState.hovered)) {
                return ColorPalette.primary50;
              } else if (states.contains(MaterialState.pressed)) {
                return ColorPalette.primary30;
              } else {
                return ColorPalette.primary40;
              }
            },
          ),
          padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 24, vertical: 20)),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return lightColorScheme.onSurface.withOpacity(0.12);
            } else {
              return lightColorScheme.onPrimary;
            }
          }),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return ColorPalette.primary40;
            } else {
              return Colors.transparent;
            }
          },
        ),
        side: const BorderSide(color: ColorPalette.primary40, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        selectedIcon: const SizedBox.shrink(),
        style: ButtonStyle(
          side: const MaterialStatePropertyAll(BorderSide(color: ColorPalette.primary95)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          textStyle: MaterialStatePropertyAll(localTextTheme.bodyMedium),
          foregroundColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return ColorPalette.primary30;
            } else {
              return ColorPalette.neutralVariant50;
            }
          }),
          backgroundColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return ColorPalette.primary99;
            } else if (states.contains(MaterialState.hovered)) {
              return ColorPalette.primary99;
            } else {
              return Colors.transparent;
            }
          }),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: ColorPalette.neutralVariant99,
        foregroundColor: ColorPalette.neutral50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        elevation: 2,
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: localTextTheme.bodyLarge,
        inputDecorationTheme: inputTheme(fontPrimary, fontSecondary),
        menuStyle: MenuStyle(
          backgroundColor: const MaterialStatePropertyAll(Color(0xffEEEDF1)),
          visualDensity: VisualDensity.compact,
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
      useMaterial3: true,
    );
  }

  static ThemeData dark(String fontPrimary, String fontSecondary) => light(fontPrimary, fontSecondary).copyWith(
        colorScheme: darkColorScheme,
        inputDecorationTheme: inputThemeDark(fontPrimary, fontSecondary),
        textTheme: textThemeDark(fontPrimary, fontSecondary),
      );
}
