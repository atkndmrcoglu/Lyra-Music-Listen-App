import 'package:flutter/material.dart';
import 'package:lyra/core/configs/assets/app_images.dart';
import 'package:lyra/common/widgets/buttons/basic_button.dart';
import 'package:lyra/presentation/prelude/pages/sign_in_page.dart';

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
            color: Colors.black.withOpacity(0.7),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AppImages.badbunny,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Discover Bad Bunny AND MORE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),

                  BasicButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignInPage()));
                    },
                    title: 'Sign In',
                  ),
                  const SizedBox(height: 15),
                  BasicButton(
                    onPressed: () {},
                    title: 'Sign Up',
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