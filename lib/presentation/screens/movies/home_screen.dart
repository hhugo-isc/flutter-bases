import 'package:cinemapedia/config/constants/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(Environment.movieDbKey),
    );
  }
}
