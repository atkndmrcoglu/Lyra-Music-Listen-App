import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lyra/common/widgets/buttons/basic_button.dart';
import 'package:lyra/core/configs/assets/app_images.dart';
import 'package:lyra/core/configs/assets/app_vectors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.modeSelectionBackground),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withValues(alpha: 0.5)
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Choose Your Mode',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: const Color(0xff30393C).withOpacity(0.5),
                          shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                              'assets/vectors/darkmode.svg',
                              fit: BoxFit.contain,
                            ),)
                          ),
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xff30393C).withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                              child: SvgPicture.asset(
                              'assets/vectors/lightmode.svg',
                              fit: BoxFit.contain,
                            ))
                      )
                    ],
                  ),
                  const SizedBox(height: 20), // Buton ile üstündeki görsel arasında boşluk
                  // Buton
                  BasicButton(
                    onPressed: () {}, 
                    title: 'Story Mode'
                  ),
                  const SizedBox(height: 20), // Alt kısımdan biraz boşluk
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}