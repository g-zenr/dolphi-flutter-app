import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../templates/auth_template.dart';
import '../atoms/input_field.dart';
import '../atoms/primary_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool _isLoading = false;

  void _handleContinue() async {
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Reset link sent!')),
      );
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthTemplate(
      title: 'Forgot Password',
      subtitle: 'Enter your email address to receive a reset link and\nregain access to your account.',
      child: Column(
        children: [
          const InputField(
            hintText: 'Email address',
            prefixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 32),
          PrimaryButton(
            label: 'Continue',
            isLoading: _isLoading,
            onPressed: _handleContinue,
          ),
        ],
      ),
    );
  }
}
