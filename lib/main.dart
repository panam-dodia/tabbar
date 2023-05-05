import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(tabs: [Text("Tab 1"), Text("Tab 2")])),
          body: const TabBarView(
            children: [
              Tab(
                child: Text("Tab 1"),
              ),
              Tab(
                child: Text("Tab 2"),
              )
            ],
          )),
    );
  }
}
