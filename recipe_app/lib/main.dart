// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive app Test')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 750) {
            return BuildPhone(context);
          } else  if (constraints.maxWidth < 1500){
            return BuildTablet(context);
          } else{
            return BuildDesktop(context);
          }
        },
    ),
    );
  }
}

Widget BuildPhone(BuildContext context){
  return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 50.0,
        color: Colors.blue,
      ),
    );
}

Widget BuildTablet(BuildContext context){
  return Center(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: 150.0,
          color: Colors.blue,
        ),
      ),
    );
}

Widget BuildDesktop(BuildContext context){
  return Scaffold(
      appBar: AppBar(
        
      ),
    );
}