import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nfsu/features/view/signup_view.dart';
import '../../constants/ui_contants.dart';
import '../auth/auth_field.dart';
import '../auth/authen_field.dart';
import '../common/rounded_small_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  static Route get route => MaterialPageRoute(
        builder: (context) => const LoginView(),
      );

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/assets/icons/page1.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 350),
                const Text(
                  'Welcome Back!',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Let\'s login to explore continuous',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                AuthField(
                  controller: emailController,
                  hintText: 'Enter your email',
                ),
                const SizedBox(height: 20),
                AuthenField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                ),
                const SizedBox(height: 40),
                RoundedSmallButton(
                  allignment: Alignment.center,
                  onTap: () {},
                  label: 'done',
                ),
                const SizedBox(height: 40),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    children: [
                      TextSpan(
                        text: ' Sign up',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpView(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
