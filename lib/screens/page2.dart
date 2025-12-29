import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF002222), // Dark Teal top
            Color(0xFF004D40), // Medium Teal middle
            Color(0xFF00695C), // Light Teal bottom
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
                      Color(0xFF64FFDA), // Cyan Accent
                      Color(0xFF009688), // Teal
                      Color(0xFF004D40), // Dark Teal
                    ],
                    stops: [0.2, 0.6, 1.0],
                    center: Alignment.center,
                    radius: 0.8,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF009688).withOpacity(0.6),
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
                      Icons.lightbulb_outline,
                      size: 100,
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

              const SizedBox(height: 40),

              // Title
               ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [
                    Color(0xFFE0F2F1), // Light Teal
                    Color(0xFF64FFDA), // Cyan Accent
                    Color(0xFF1DE9B6), // Teal Accent
                  ],
                  stops: [0.0, 0.5, 1.0],
                ).createShader(bounds),
                child: const Text(
                  'Key Features',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: 1.1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 30),

              // Feature List with Glassmorphism
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                   gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.1),
                      Colors.white.withOpacity(0.05),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
                child: Column(
                  children: [
                    _buildFeatureItem(
                      'UI/UX: Membangun antarmuka pengguna yang menarik dan responsif.',
                    ),
                     _buildFeatureItem(
                      'Logic: Menangani logika aplikasi dan interaksi data.',
                    ),
                     _buildFeatureItem(
                      'Native: Mengakses fitur kameras, GPS, dan penyimpanan.',
                    ),
                     _buildFeatureItem(
                      'Data: Mengelola penyimpanan data lokal dan jarak jauh.',
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

  Widget _buildFeatureItem(String text) {
     final parts = text.split(': ');
    final title = parts.isNotEmpty ? parts[0] : '';
    final description = parts.length > 1 ? parts.sublist(1).join(': ') : '';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 8,
            height: 8,
            margin: const EdgeInsets.only(top: 8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF64FFDA), // Cyan Accent
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF64FFDA),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF64FFDA), // Cyan Accent Title
                    ),
                  ),
                  if (description.isNotEmpty) ...[
                    const TextSpan(
                      text: ': ',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                    TextSpan(
                      text: description,
                      style: const TextStyle(
                        fontSize: 15, 
                        color: Colors.white70,
                        height: 1.4,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
