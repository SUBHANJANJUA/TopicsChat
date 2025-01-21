import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';

ThemeData theme(context) {
  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;
    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  return ThemeData(
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          color: Colors.grey[600],
          borderRadius: BorderRadius.circular(25),
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey[400],
        dividerColor: Colors.transparent,
        // tabAlignment: TabAlignment.start,
      ),
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return TopicColor.white; // Active track color
          }
          return Colors.grey.shade400; // Inactive track color
        }),
        thumbColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return TopicColor.primary; // Active thumb color
          }
          return Colors.white; // Inactive thumb color
        }),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        splashRadius: 0.0, // Removes padding-like effect
      ),
      // listTileTheme: ListTileThemeData(
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // ),
      colorScheme: const ColorScheme(
        primary: TopicColor.primary,
        onPrimary: TopicColor.primary,
        secondary: TopicColor.black,
        onSecondary: TopicColor.black,
        surface: TopicColor.lightGrey,
        onSurface: TopicColor.black,
        error: TopicColor.lightOrange,
        onError: TopicColor.lightOrange,
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: TopicColor.black,
          ),
          color: TopicColor.black),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: TopicColor.white,
        selectionColor: Colors.blue,
        selectionHandleColor: Colors.blue,
      ),
      //  useMaterial3: false,
      canvasColor: TopicColor.black,
      scaffoldBackgroundColor: TopicColor.black,
      fontFamily: 'openSans',
      visualDensity: VisualDensity.adaptivePlatformDensity,
      bottomSheetTheme: const BottomSheetThemeData(
          surfaceTintColor: TopicColor.bgchatGrey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          backgroundColor: TopicColor.bgchatGrey),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: TopicColor.primary,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: TopicColor.white,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), side: BorderSide.none),
        ),
      ),
      inputDecorationTheme: textFormFieldDecoration());
}

InputDecorationTheme textFormFieldDecoration() {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
    suffixIconColor: Colors.grey,
    isDense: true,
    // borderRadius: BorderRadius.circular(24),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromRGBO(69, 69, 69, 1),
        ),
        borderRadius: BorderRadius.circular(24)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromRGBO(69, 69, 69, 1),
        ),
        borderRadius: BorderRadius.circular(24)),
    errorBorder: InputBorder.none,

    // errorBorder: OutlineInputBorder(
    //     borderSide: const BorderSide(
    //       color: Color.fromRGBO(69, 69, 69, 1),
    //     ),
    //     borderRadius: BorderRadius.circular(24)),
    border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromRGBO(69, 69, 69, 1),
        ),
        borderRadius: BorderRadius.circular(24)),
  );
}

// BoxDecoration textFieldBoxDecoration() {
//   return BoxDecoration(
//     color: Colors.white, // Ensures white background inside the Container
//     borderRadius: BorderRadius.circular(30),
//     border: Border.all(color: AppColors.lightblack, width: 0.3),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.2), // Adjust opacity to desired level
//         spreadRadius: 7,
//         blurRadius: 50,
//         offset: const Offset(0, 3), // changes position of shadow
//       ),
//     ],
//   );
// }
BoxDecoration textFieldBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    // border: Border.all(color: AppColors.lightblack, width: 0.3),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.08),
        blurRadius: 6,
        offset: const Offset(0, 6),
      ),
    ],
  );
}
