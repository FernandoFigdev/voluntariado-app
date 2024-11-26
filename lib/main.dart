import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/event_list_screen.dart';
import 'screens/registration_screen.dart';

void main() {
  runApp(const AppVoluntariado());
}

class AppVoluntariado extends StatelessWidget {
  const AppVoluntariado({Key? key}) : super(key: key);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepOrange,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(
      secondary: Colors.tealAccent,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.deepOrange,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      buttonColor: Colors.orangeAccent,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/events':
        return MaterialPageRoute(builder: (_) => const EventListScreen());
      case '/registrations':
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Voluntariado',
      theme: lightTheme,
      initialRoute: '/splash',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
