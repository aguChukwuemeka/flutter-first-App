import 'package:flutter/material.dart';

import 'description.dart';
import 'login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (backgroundColor == Colors.white) {
                  backgroundColor = Colors.purple;
                } else {
                  backgroundColor = Colors.white;
                }
              });
            },
            icon: const Icon(
              Icons.color_lens,
            ),
          ),
        ],
        title: const Text('Home'),
        centerTitle: true,
      ),
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
                leading: const Icon(Icons.settings),
                title: const Text(
                  'settings',
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const LoginPage();
                  }));
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        onPrimary: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('Consultants'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        onPrimary: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('Doctor'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        onPrimary: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('Book Appointment'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        onPrimary: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('Request Card'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        onPrimary: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('Customer Care'),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Description(
                        title: 'Rechard',
                        imagePath:
                            'images/cute-little-girl-applying-makeup.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2)),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/cute-little-girl-applying-makeup.png',
                    ),
                    const ListTile(
                      title: Text('Rechard'),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).push<void>(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const Description(
                        title: 'Stephanie and Nala',
                        imagePath:
                            'images/at-least-you,-my-friend,-stay-by-my-side.png',
                      );
                    },
                  ),
                ),
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2)),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/at-least-you,-my-friend,-stay-by-my-side.png',
                    ),
                    const ListTile(
                      title: Text('Stephanie and Nala'),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).push<void>(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const Description(
                        title: 'Mr. and Mrs. Smith',
                        imagePath: 'images/happy,-cozy-and-comfortable.png',
                      );
                    },
                  ),
                ),
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2)),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/happy,-cozy-and-comfortable.png',
                    ),
                    const ListTile(
                      title: Text('Mr. and Mrs. Smith'),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).push<void>(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const Description(
                          title: 'Esther',
                          imagePath:
                              'images/i-like-my-new-ballerina-outfit-a-lot.png');
                    },
                  ),
                ),
              },
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2)),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/i-like-my-new-ballerina-outfit-a-lot.png',
                    ),
                    const ListTile(
                      title: Text('Esther'),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
