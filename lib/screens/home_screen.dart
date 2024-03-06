import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forecasting'),
      ),
      body: const Center(
        child: Text('Welcome to the weather forecasting app'),
      ),
    );
  }
}
