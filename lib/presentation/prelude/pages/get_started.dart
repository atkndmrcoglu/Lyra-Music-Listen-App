import 'package:flutter/material.dart';
import 'package:lyra/core/configs/assets/app_images.dart';
import 'package:lyra/common/widgets/buttons/basic_button.dart';
import 'package:lyra/presentation/prelude/pages/sign_in_page.dart';
import 'package:lyra/presentation/prelude/pages/sign_up_page.dart';

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
            color: Colors.black.withOpacity(0.3),
          ),
          

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'THE LIFE OF A SHOWGIRL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Discover Taylors world through her eyes. Experience the highs and lows of fame, love, and heartbreak in this immersive narrative with lyra.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),

                  BasicButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignInPage()));
                    },
                    title: 'Sign In',
                  ),
                   
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}