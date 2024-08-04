import 'package:flutter/material.dart';
import 'package:paud/Page/angka/1.dart';
import 'package:paud/Page/hewan/gajah.dart';
import 'package:paud/Page/huruf/a.dart';
import 'package:paud/Page/sayur/apel.dart';
import 'package:paud/tentang.dart';

class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.withOpacity(0.7),
                  Colors.white.withOpacity(0.7)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/img/bg.png'), // Path gambar background
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Ikon info di pojok kanan atas
          Positioned(
            top: 24,
            right: 1,
            child: IconButton(
              icon: Icon(Icons.info),
              iconSize: 50, // Ukuran ikon
              color: Colors.white, // Warna ikon
              onPressed: () {
                // Implementasi aksi saat ikon info ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Tentang()), // Navigasi ke halaman Tentang
                );
              },
            ),
          ),
          // Konten utama
          Column(
            children: [
              SizedBox(height: 0), // Memberikan jarak antara app bar dan logo
              Image.asset(
                'assets/img/logo.png', // Path logo
                width: 300,
                height: 300,
              ),
              SizedBox(height: 10), // Memberikan jarak antara logo dan grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5.0, // Jarak vertikal antar grid
                  crossAxisSpacing: 5.0, // Jarak horizontal antar grid
                  padding: EdgeInsets.all(8.0), // Padding di sekitar grid
                  children: [
                    buildInkWellButton(
                        context, 'assets/img/angka.png', 'angka'),
                    buildInkWellButton(
                        context, 'assets/img/huruf.png', 'huruf'),
                    buildInkWellButton(context, 'assets/img/buah.png', 'buah'),
                    buildInkWellButton(
                        context, 'assets/img/hewan.png', 'hewan'),
                  ],
                ),
              ),
            ],
          ),
          // Copyright di bawah konten
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Text(
          //       '© 2024 Testing Only | Elzz Apps Develover',
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 16,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget buildInkWellButton(
      BuildContext context, String imagePath, String routeName) {
    return InkWell(
      onTap: () {
        // Implementasi aksi saat button ditekan
        if (routeName == 'angka') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Angka1()), // Navigasi ke halaman Angka
          );
        }
        if (routeName == 'huruf') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => hA()), // Navigasi ke halaman Huruf
          );
        }
        if (routeName == 'hewan') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Gajah()), // Navigasi ke halaman Hewan
          );
        }
        if (routeName == 'buah') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Apel()), // Navigasi ke halaman Buah
          );
        }
        // Tambahkan kondisi untuk navigasi ke halaman lain jika perlu
      },
      child: Container(
        width: 200, // Lebar button
        height: 200, // Tinggi button
        padding: EdgeInsets.all(1.0), // Padding dalam button

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 170,
              height: 180,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
