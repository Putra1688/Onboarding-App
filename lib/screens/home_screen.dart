import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4A00E0), // Deep Purple
              Color(0xFF8E2DE2), // Bright Purple
              Color(0xFF00B4DB), // Cyan
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Animated Celebration Icon
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const RadialGradient(
                        colors: [
                          Color(0xFFFFD700), // Gold
                          Color(0xFFFFA500), // Orange
                          Color(0xFFFF6347), // Tomato
                        ],
                        stops: [0.2, 0.6, 1.0],
                        center: Alignment.center,
                        radius: 0.9,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFFFA500).withOpacity(0.8),
                          blurRadius: 60,
                          spreadRadius: 15,
                          offset: const Offset(0, 15),
                        ),
                        BoxShadow(
                          color: const Color(0xFFFFD700).withOpacity(0.6),
                          blurRadius: 30,
                          spreadRadius: 8,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Celebration Rings
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45 * 1.1,
                          height:
                              MediaQuery.of(context).size.width * 0.45 * 1.1,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                              width: 2,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            ),
                          ),
                        ),

                        // Confetti Particles
                        Positioned(
                          top: 20,
                          right: 30,
                          child: _buildConfetti(Colors.yellow, context),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: _buildConfetti(Colors.pink, context),
                        ),
                        Positioned(
                          top: 40,
                          left: 40,
                          child: _buildConfetti(Colors.cyan, context),
                        ),

                        // Main Celebration Icon
                        const Icon(
                          Icons.celebration,
                          size: 80,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 15,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Title with Excitement
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [
                        Color(0xFFFFFFFF), // White
                        Color(0xFFFFD700), // Gold
                      ],
                      stops: [0.0, 1.0],
                    ).createShader(bounds),
                    child: Text(
                      '🎉 Congratulations! 🎉',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.08,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        letterSpacing: 1.2,
                        height: 1.3,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Energetic Subtitle
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFF416C), Color(0xFFFF4B2B)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFFF416C).withOpacity(0.5),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.rocket_launch,
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'FLUTTER MASTER ACHIEVED!',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            letterSpacing: 1.1,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(
                          Icons.rocket_launch,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Celebration Message Card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white, Color(0xFFFFF8E1)],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 30,
                          offset: const Offset(0, 15),
                        ),
                        BoxShadow(
                          color: const Color(0xFFFF416C).withOpacity(0.2),
                          blurRadius: 20,
                          spreadRadius: 3,
                          offset: const Offset(0, 8),
                        ),
                      ],
                      border: Border.all(
                        color: Colors.white.withOpacity(0.4),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        // Celebration Icons Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 30),
                            const SizedBox(width: 15),
                            Icon(
                              Icons.emoji_events,
                              color: Colors.blue,
                              size: 35,
                            ),
                            const SizedBox(width: 15),
                            Icon(Icons.star, color: Colors.amber, size: 30),
                          ],
                        ),

                        const SizedBox(height: 20),

                        // Energetic Message
                        const Text(
                          'YES! 🚀 You did it!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF4A00E0),
                            letterSpacing: 1.1,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 15),

                        Text(
                          'Selamat! Anda telah berhasil menyelesaikan onboarding dan memahami dasar-dasar layout Flutter dengan luar biasa!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500,
                            height: 1.6,
                            letterSpacing: 0.3,
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Party Popper
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildPartyPopper(Colors.red),
                            const SizedBox(width: 10),
                            _buildPartyPopper(Colors.blue),
                            const SizedBox(width: 10),
                            _buildPartyPopper(Colors.green),
                            const SizedBox(width: 10),
                            _buildPartyPopper(Colors.purple),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),

                  // Next Adventure Section
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF00B4DB).withOpacity(0.3),
                          const Color(0xFF8E2DE2).withOpacity(0.3),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.3),
                        width: 1.5,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bolt, color: Colors.yellow, size: 30),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Text(
                                'Ready for the next adventure?',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        Text(
                          'State management, API integration, and advanced animations await you!',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Energetic Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Main Action Button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/onboarding',
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF416C),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 18,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 10,
                          shadowColor: const Color(0xFFFF416C).withOpacity(0.6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.replay_circle_filled, size: 24),
                            const SizedBox(width: 12),
                            Text(
                              'REVIEW AGAIN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Fun Progress Dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildProgressDot(Colors.yellow, true, context),
                      const SizedBox(width: 8),
                      _buildProgressDot(Colors.orange, true, context),
                      const SizedBox(width: 8),
                      _buildProgressDot(Colors.red, true, context),
                      const SizedBox(width: 8),
                      _buildProgressDot(Colors.purple, true, context),
                      const SizedBox(width: 8),
                      _buildProgressDot(Colors.blue, true, context),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // Celebration Emojis
                  Wrap(
                    spacing: 15,
                    runSpacing: 10,
                    children: [
                      Text('🎯', style: TextStyle(fontSize: 24)),
                      Text('🚀', style: TextStyle(fontSize: 24)),
                      Text('⭐', style: TextStyle(fontSize: 24)),
                      Text('🏆', style: TextStyle(fontSize: 24)),
                      Text('💪', style: TextStyle(fontSize: 24)),
                      Text('🎨', style: TextStyle(fontSize: 24)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConfetti(Color color, BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.8),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
    );
  }

  Widget _buildPartyPopper(Color color) {
    return Icon(Icons.confirmation_number, color: color, size: 28);
  }

  Widget _buildProgressDot(Color color, bool isActive, BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 25 : 12,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.7),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
