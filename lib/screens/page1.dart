import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0A1A3B), // Dark blue top
            Color(0xFF1A3B7D), // Medium blue middle
            Color(0xFF2A5ABF), // Bright blue bottom
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
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const RadialGradient(
                    colors: [
                      Color(0xFF00B4FF),
                      Color(0xFF0066FF),
                      Color(0xFF0033CC),
                    ],
                    stops: [0.2, 0.6, 1.0],
                    center: Alignment.center,
                    radius: 0.8,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF0066FF).withOpacity(0.6),
                      blurRadius: 60,
                      spreadRadius: 10,
                      offset: const Offset(0, 15),
                    ),
                    BoxShadow(
                      color: const Color(0xFF00B4FF).withOpacity(0.4),
                      blurRadius: 30,
                      spreadRadius: 5,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Outer Glow Ring
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                          width: 2,
                        ),
                      ),
                    ),
                    
                    // Inner Glow Ring
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                    ),
                    
                    // Main Icon
                    const Icon(
                      Icons.rocket_launch,
                      size: 110,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 15,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 50),
              
              // Title with Gradient Text
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0xFF00FFFF), // Cyan
                    Color(0xFF0080FF), // Light Blue
                    
                  ],
                  stops: [0.0, 0.5, 1.0],
                ).createShader(bounds),
                child: const Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              
              const SizedBox(height: 10),
              
              // Subtitle with Bold Blue
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF0066FF),
                      Color(0xFF00B4FF),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF0066FF).withOpacity(0.4),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Text(
                  'Get ready to learn what Mobile Flutter is all about.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              
              const SizedBox(height: 30),
              
              // Description Card with Premium Look
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFFFFFFF), // White
                      Color(0xFFF0F8FF), // Alice Blue
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 25,
                      offset: const Offset(0, 10),
                    ),
                    BoxShadow(
                      color: const Color(0xFF0066FF).withOpacity(0.1),
                      blurRadius: 15,
                      spreadRadius: 2,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    // Decorative Icon
                    Icon(
                      Icons.auto_awesome,
                      size: 30,
                      color: const Color(0xFF0066FF).withOpacity(0.8),
                    ),
                    
                    const SizedBox(height: 15),
                    
                    const Text(
                      'Aplikasi ini akan membantu Anda mempelajari Flutter dengan mudah. Mari kita mulai perjalanan belajar Anda!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF1A3B7D),
                        fontWeight: FontWeight.w500,
                        height: 1.6,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Decorative Elements
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(const Color(0xFF00B4FF)),
                  const SizedBox(width: 8),
                  _buildDot(const Color(0xFF0066FF)),
                  const SizedBox(width: 8),
                  _buildDot(const Color(0xFF0033CC)),
                  const SizedBox(width: 8),
                  _buildDot(const Color(0xFF00B4FF)),
                  const SizedBox(width: 8),
                  _buildDot(const Color(0xFF0066FF)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot(Color color) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.6),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}