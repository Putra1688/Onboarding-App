import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final VoidCallback onPrevious;

  const OnboardingButton({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onNext,
    required this.onSkip,
    required this.onPrevious,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Tombol Skip (hanya muncul di halaman pertama) atau Previous
        if (currentPage == 0)
          TextButton(
            onPressed: onSkip,
            child: const Text(
              'Skip',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          )
        else
          TextButton(
            onPressed: onPrevious,
            child: const Text(
              'Previous',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),

        const Spacer(),

        // Tombol Next/Get Started
        ElevatedButton(
          onPressed: onNext,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            currentPage < totalPages - 1 ? 'Next' : 'Get Started',
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
