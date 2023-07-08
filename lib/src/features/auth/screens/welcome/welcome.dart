import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(image: AssetImage(tWelcomeImage)),
          Column(
            children: [
              Text(
                'Hi',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey, width: 2),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                    ),
                    onPressed: () {},
                    child: Text('Login'.toUpperCase()),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                    ),
                    onPressed: () {},
                    child: Text('SignUp'.toUpperCase()),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
