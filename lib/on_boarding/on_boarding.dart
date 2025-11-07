import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../config/language/language_selector.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  static const routeName = "/onboarding";

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController();
  bool isLast = false;

  final Color mainBlue = const Color(0xFF3563E9);
  final Color backgroundColor = const Color(0xFFF2FEFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            // ✅ المحتوى الرئيسي (قابل للتمرير)
            Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      setState(() => isLast = index == 3);
                    },
                    children: [
                      buildPage(
                        image: AppImages.firstOnBoarding,
                        title: 'Personalize Your Experience',
                        text:
                        'Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.',
                        buttonText: 'Let’s Start',
                      ),
                      buildPage(
                        image: AppImages.secondOnBoarding,
                        title: 'Find Events That Inspire You',
                        text:
                        'Dive into a world of events crafted to your unique interests. Discover experiences around you.',
                      ),
                      buildPage(
                        image: AppImages.thirdOnBoarding,
                        title: 'Effortless Event Planning',
                        text:
                        'Take the hassle out of organizing events with our all-in-one planning tools that save your time.',
                      ),
                      buildPage(
                        image: AppImages.firstOnBoarding,
                        title: 'Connect with Friends & Share Moments',
                        text:
                        'Make every event memorable by sharing your experiences and moments with friends.',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isLast
                          ? const SizedBox(width: 60)
                          : TextButton(
                        onPressed: () => controller.jumpToPage(3),
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: mainBlue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: controller,
                        count: 4,
                        effect: WormEffect(
                          activeDotColor: mainBlue,
                          dotColor: Colors.grey.shade300,
                          spacing: 8,
                          dotHeight: 8,
                          dotWidth: 8,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (isLast) {
                            Navigator.pushReplacementNamed(context, '/login');
                          } else {
                            controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: Text(
                          isLast ? 'Done' : 'Next',
                          style: TextStyle(
                            color: mainBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // ✅ عنصر اللغة والثيم في الأسفل (ثابت)
            Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: LanguageSelector(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage({
    required String image,
    required String title,
    required String text,
    String? buttonText,
  }) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.eventlyLogo, height: 70),
            const SizedBox(height: 20),
            Image.asset(image, height: 260),
            const SizedBox(height: 30),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1E3A8A),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
            if (buttonText != null) ...[
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3563E9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  minimumSize: const Size(double.infinity, 55),
                ),
                onPressed: () => controller.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                ),
                child: Text(
                  buttonText,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
