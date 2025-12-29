import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Gambar/Icon
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.waving_hand,
              size: 120,
              color: Colors.blue,
            ),
          ),
          
          const SizedBox(height: 50),
          
          // Judul
          const Text(
            'Welcome!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          
          const Text(
            'Get ready to learn what Mobile Flutter is all about.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          
          const SizedBox(height: 20),
          
          // Deskripsi
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Aplikasi ini akan membantu Anda mempelajari Flutter dengan mudah. Mari kita mulai perjalanan belajar Anda!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}