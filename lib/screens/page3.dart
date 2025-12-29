import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF261E00), // Dark Brown/Gold top
            Color(0xFF4A3B00), // Medium Gold middle
            Color(0xFF6D5C00), // Light Gold bottom
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Premium Animated Icon with Glow
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const RadialGradient(
                    colors: [
                      Color(0xFFFFD700), // Gold
                      Color(0xFFFFA000), // Amber
                      Color(0xFF5D4037), // Dark Brown
                    ],
                    stops: [0.2, 0.6, 1.0],
                    center: Alignment.center,
                    radius: 0.8,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFFFA000).withOpacity(0.6),
                      blurRadius: 50,
                      spreadRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                 child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                          width: 2,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.star_rounded,
                      size: 110,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 50),
              
              // Title
               ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [
                    Color(0xFFFFF9C4), // Light Yellow
                    Color(0xFFFFD700), // Gold
                    Color(0xFFFF6F00), // Amber Dark
                  ],
                  stops: [0.0, 0.5, 1.0],
                ).createShader(bounds),
                child: const Text(
                  'Mulai Sekarang!',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Description
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                 decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Anda telah mempelajari dasar-dasar Flutter. Sekarang saatnya membuat aplikasi pertama Anda!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                ),
              ),
              
              const SizedBox(height: 30),
              
               // Premium Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                       Color(0xFFFFA000).withOpacity(0.2),
                       Color(0xFFFFD700).withOpacity(0.1),
                    ],
                     begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFFFD700).withOpacity(0.3),
                    width: 1,
                  ),
                   boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                     Icon(
                      Icons.check_circle,
                      color: Color(0xFFFFD700),
                      size: 30,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        'Project ini siap untuk portofolio Anda',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               const SizedBox(height: 80), // Space for Navbar
            ],
          ),
        ),
      ),
    );
  }
}