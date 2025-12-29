import 'package:flutter/material.dart';
import 'package:flutter_onboarding_app/screens/page1.dart';
import 'package:flutter_onboarding_app/screens/page2.dart';
import 'package:flutter_onboarding_app/screens/page3.dart';
import 'package:flutter_onboarding_app/widgets/onboarding_button.dart';
import 'package:flutter_onboarding_app/widgets/onboarding_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<Widget> _pages = [const Page1(), const Page2(), const Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return _pages[index];
                },
              ),
            ),

            // Bagian bawah dengan indicator dan tombol
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  OnboardingIndicator(
                    currentPage: _currentPage,
                    pageCount: _pages.length,
                  ),

                  const SizedBox(height: 30),

                  // Tombol
                  OnboardingButton(
                    currentPage: _currentPage,
                    totalPages: _pages.length,
                    onNext: () {
                      if (_currentPage < _pages.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      } else {
                        // Navigasi ke home screen
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    },
                    onSkip: () {
                      _pageController.jumpToPage(_pages.length - 1);
                    },
                    onPrevious: () {
                      if (_currentPage > 0) {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
