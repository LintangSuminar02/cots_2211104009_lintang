import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/welcome_controller.dart';

class WelcomeView extends StatelessWidget {
  final WelcomeController controller = Get.find<WelcomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Gojek dan Bahasa
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/gojek_logo.png', // Tambahkan logo Gojek
                    height: 40,
                  ),
                  const Text(
                    "IND",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Ilustrasi
            Image.asset(
              'assets/welcome_image.png', // Tambahkan ilustrasi
              height: 200,
            ),

            const SizedBox(height: 20),

            // Judul dan Deskripsi
            const Text(
              "Selamat datang di gojek!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun",
              style: TextStyle(fontSize: 14, color: Colors.black54),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // Indikator Slide
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return GestureDetector(
                    onTap: () => controller.changeSlide(index),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: controller.currentSlide.value == index
                            ? Colors.black
                            : Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                }),
              );
            }),

            const SizedBox(height: 30),

            // Tombol Masuk
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman berikutnya (jika ada)
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Masuk",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Tombol Daftar
            TextButton(
              onPressed: () {},
              child: const Text(
                "Belum ada akun?, Daftar dulu",
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
            ),

            const SizedBox(height: 10),

            // Syarat dan Ketentuan
            const Text(
              "Dengan masuk atau mendaftar, kamu menyetujui\nKetentuan layanan dan Kebijakan privasi.",
              style: TextStyle(fontSize: 12, color: Colors.black54),
              textAlign: TextAlign.center,
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
