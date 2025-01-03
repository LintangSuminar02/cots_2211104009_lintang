import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller.dart';

class OnboardingView extends StatelessWidget {
  final onboardingController = Get.find<OnboardingController>();

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/gambarOnboarding1.png",
      "title": "Selamat datang di gojek!",
      "description": "Aplikasi yang bikin hidupmu lebih nyaman."
    },
    {
      "image": "assets/gambarOnboarding2.png",
      "title": "Transportasi & Logistik",
      "description": "Antarin kamu jalan atau ambilin barang lebih gampang."
    },
    {
      "image": "assets/gambarOnboarding3.png",
      "title": "Pesan makan & belanja",
      "description": "Gojek beliin gak pakai lama."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: onboardingController.updatePage,
              itemCount: onboardingData.length,
              itemBuilder: (context, index) => OnboardingContent(
                image: onboardingData[index]["image"]!,
                title: onboardingData[index]["title"]!,
                description: onboardingData[index]["description"]!,
              ),
            ),
          ),
          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingData.length,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width:
                      onboardingController.currentPage.value == index ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: onboardingController.currentPage.value == index
                        ? Colors.green
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            );
          }),
          SizedBox(height: 20),
          CustomButton(
            text: "Masuk",
            onPressed: () {
              // Navigasi ke halaman berikutnya
            },
          ),
          CustomButton(
            text: "Belum ada akun?, Daftar dulu",
            onPressed: () {
              // Navigasi ke halaman pendaftaran
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String image, title, description;

  const OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 200),
        SizedBox(height: 20),
        Text(title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(description, textAlign: TextAlign.center),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(text, style: TextStyle(fontSize: 16)),
    );
  }
}
