import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lyra/core/configs/assets/app_images.dart';
import 'package:lyra/presentation/prelude/pages/get_started.dart';
import 'package:lyra/core/configs/theme/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: Stack(
        children: [

          Align(
            alignment: const AlignmentDirectional(0, -1.5),
            child: Container(
              height: 400,
              width: 600,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purpleAccent,
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-1.5, -1.2),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepPurple.withValues(alpha: 0.6),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(3, 1.5),
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.circle, 
                color: LyraColors.accentCyan,
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-3, 1.5),
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.circle, 
                color: LyraColors.accentCyan,
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0, 1.8),
            child: Container(
              height: 400,
              width: 600,
              decoration: const BoxDecoration(
                color: LyraColors.primary,
              ),
            ),
          ),
          
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
            child: Container(
              decoration: const BoxDecoration(color: Colors.transparent),
            ),
          ),
          
          Center(
            child: Image.asset(
              AppImages.logo,
              width: 500, 
            ),
          ),
        ],
      ),
      
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Text(
          '© 2026 Lyra All rights reserved.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white24,
            letterSpacing: 0.8,
          ),
        ),
      ),
    );
  }

  Future<void> redirect() async {
  await Future.delayed(const Duration(seconds: 2));
  
  if (!mounted) {
    return;
  }
  
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const GetStartedPage(),
      ),
    );
  

  
}
}