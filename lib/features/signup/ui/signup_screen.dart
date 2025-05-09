import 'package:flutter/material.dart';
import 'package:foodie/core/utils/color_manager.dart';
import 'package:foodie/core/widgets/custom_button.dart';
import '../../login/ui/widgets/custom_text_field.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/core/widgets/custom_back_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomBackButton(),
                  ],
                ),
                const SizedBox(height: 48),
                const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'AlfaSlabOne',
                      color: ColorManager.primaryRed,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    'Create your new account.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const CustomTextField(
                  hintText: 'Full Name',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: 'Email or phone',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: 'Password',
                  isPassword: true,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: 'Confirm Password',
                  isPassword: true,
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: agree,
                      onChanged: (val) {
                        setState(() {
                          agree = val ?? false;
                        });
                      },
                      activeColor: ColorManager.primaryRed,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(text: 'I agree to your '),
                            TextSpan(
                              text: 'privacy policy',
                              style: TextStyle(color: ColorManager.primaryRed),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: 'terms & conditions.',
                              style: TextStyle(color: ColorManager.primaryRed),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: 'Sign up',
                  onPressed: () {},
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already an account, ',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.login);
                      },
                      child: const Text(
                        'login',
                        style: TextStyle(
                          color: ColorManager.primaryRed,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 