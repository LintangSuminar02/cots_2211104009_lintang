import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                Image.asset(
                  'assets/Gojek Logi.png', // Tambahkan logo Gojek di folder assets
                  height: 50,
                ),
                SizedBox(height: 20),
                Image.asset(
                  'assets/gojek_illustration.png', // Tambahkan ilustrasi di folder assets
                  height: 150,
                ),
                SizedBox(height: 20),
                Text(
                  'Selamat datang di gojek!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => ()); // Ganti NextView sesuai tujuan
                  },
                  child: Text('Masuk'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Get.to(() => ()); // Ganti RegistrationView
                  },
                  child: Text(
                    'Belum ada akun? Daftar dulu',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
