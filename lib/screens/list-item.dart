import 'package:flutter/material.dart';

class LIstItem extends StatelessWidget {
  const LIstItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: ListTile(
                  title: Text(
                    'Doctor APP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'section one',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
