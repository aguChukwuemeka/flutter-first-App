import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'To Flutter First App',
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              Image.asset(
                'images/acting-like-an-adult.png',
                scale: 1,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Home();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.purple,
                  minimumSize: const Size(300, 40),
                ),
                child: const Text('Login'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.purpleAccent,
                  minimumSize: const Size(300, 40),
                ),
                child: const Text('Register'),
              ),
            ],
          ),
        ));
  }
}
