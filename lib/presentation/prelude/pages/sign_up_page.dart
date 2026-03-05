import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lyra/core/configs/theme/app_colors.dart';
import 'package:lyra/common/widgets/buttons/basic_button.dart'; 
import 'package:lyra/presentation/prelude/pages/sign_in_page.dart';

class SignUpPage extends StatelessWidget {
   SignUpPage({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
        
          _buildBackgroundCircles(),


          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
            child: Container(
              color: Colors.transparent,
            ),
          ),


          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 50),
                  _usernameField(context),
                  const SizedBox(height: 20),
                  _emailField(context),
                  const SizedBox(height: 20),
                  _passwordField(context),
                  const SizedBox(height: 30),
                  BasicButton(
                    title: 'Sign Up', 
                    onPressed: () async {

                    },
                  ),
                  const SizedBox(height: 15),
                  _loginText(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _usernameField(BuildContext context) {
    return TextField(
      controller: _email,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        hintText: 'Username',
        hintStyle: TextStyle(color: Colors.white54),
      ),
    );
  } 
  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _email,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.white54),
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      obscureText: true,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.white54),
      ),
    );
  }

  Widget _loginText(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>  SignInPage(),
            ),
          );
      },
      child: const Text(
        "Already have an account? Log in",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildBackgroundCircles() {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(0, -1.5),
          child: Container(
            height: 400,
            width: 600,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: LyraColors.primary),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-1.5, -1.2),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // ignore: deprecated_member_use
              color: Colors.deepPurple.withOpacity(0.6),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(3, 1.5),
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: LyraColors.accentCyan),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-3, 1.5),
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: LyraColors.accentCyan),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0, 1.8),
          child: Container(
            height: 400,
            width: 600,
            decoration: const BoxDecoration(color: LyraColors.primary),
          ),
        ),
      ],
    );
  }
}
