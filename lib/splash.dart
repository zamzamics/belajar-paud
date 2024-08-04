import 'package:flutter/material.dart';
import 'dart:async';

import 'package:paud/dash.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Navigasi ke dash1.dart setelah 10 detik
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Dash()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Gambar PNG sebagai background di atas gradient
          Positioned.fill(
            child: Image.asset(
              'assets/img/bg.png', // Path ke gambar background di folder assets
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
          ),
          // Logo di tengah layar
          Center(
            child: Image.asset(
              'assets/img/logo.png', // Path ke gambar logo di folder assets
              width: 300, // Atur lebar gambar sesuai kebutuhan
              height: 300, // Atur tinggi gambar sesuai kebutuhan
            ),
          ),
        ],
      ),
    );
  }
}
