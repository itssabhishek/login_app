import 'package:flutter/material.dart';
import 'package:login_app/src/features/auth/screens/splash_screen/splash_screen.dart';
import 'package:login_app/src/features/auth/screens/welcome/welcome.dart';
import 'package:login_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const WelcomeScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: const Icon(Icons.ondemand_video_outlined),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text('Heading', style: Theme.of(context).textTheme.displayMedium),
            Text('Sub-heading', style: Theme.of(context).textTheme.titleSmall),
            Text('Paragraph', style: Theme.of(context).textTheme.bodyLarge),
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            OutlinedButton(
                onPressed: () {}, child: const Text('Elevated Button'))
          ],
        ),
      ),
    );
  }
}
