import 'package:flutter/material.dart';
import 'package:lyra/common/widgets/buttons/basic_button.dart';
import 'package:lyra/core/configs/assets/app_images.dart';
import 'package:lyra/presentation/prelude/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
children: [
  Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AppImages.preludeBackground),
        fit: BoxFit.cover,
      ),
    ),
  ),
  Container(
    // avoid potential recursive extension call; use the standard API
    color: Colors.black.withOpacity(0.5),
  ),
  SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const Text(
            'Discover The Life Of A Showgirl',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Beyond the melodies of "The Life of a Showgirl" lies a world of untold stories. Discover exclusive insights, legendary performances, and the full spectrum of entertainment with Lyra.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white70,
            ),
          ),
          const Spacer(),
          BasicButton(onPressed: (){
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => const ChooseModePage()
             ));
          }, title: 'Get Started')
        ],
      ),
    ),
  ),
  
],
      ),
    );
  }
}