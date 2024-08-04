import 'package:flutter/material.dart';

class Tentang extends StatelessWidget {
  const Tentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tentang Aplikasi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/img/bg1.png"), // Path gambar background
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(0.5),
              Colors.white.withOpacity(0.5)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Aplikasi pembelajaran untuk Pendidikan Anak Usia Dini (PAUD) atau Early Childhood Education (ECE) dirancang khusus untuk mendukung proses belajar mengajar pada anak usia dini, biasanya antara 0-6 tahun. Aplikasi ini memiliki beberapa fitur dan tujuan yang berbeda dibandingkan dengan aplikasi pembelajaran untuk tingkat pendidikan yang lebih tinggi.",
                      style: TextStyle(
                        fontSize: 16.0,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Kurikulum Merdeka PAUD",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Kurikulum Merdeka yang ada di jenjang Pendidikan Anak Usia Dini (PAUD) yaitu memberikan ruang seluas-luasnya kepada peserta didik di satuan PAUD untuk tumbuh dan berkembang sesuai dengan kodratnya sebagai anak Indonesia. Hal ini menjadi salah satu tujuan Kurikulum Merdeka karena ingin memberikan sepenuhnya hak anak untuk bisa tumbuh, berkembang dan memperoleh layanan pendidikan secara tepat.",
                      style: TextStyle(
                        fontSize: 16.0,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "Profil Developer",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/img/p.png", // Path foto profil
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Nama: Juwandi Wijaya\nKampus: STMIK SZ NW Anjani\nAlamat: Sakra Timur",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Versi Aplikasi: Android 0.0.1",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
