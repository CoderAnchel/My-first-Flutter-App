import 'package:app1/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPag(),
    );
  }
}

class RootPag extends StatefulWidget {
  const RootPag({Key? key}) : super(key: key);

  @override
  State<RootPag> createState() => _RootPagState();
}

class _RootPagState extends State<RootPag> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berzite'),
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Boton pulsado');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
