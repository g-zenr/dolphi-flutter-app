import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../shared/providers/auth_provider.dart';
import '../templates/auth_template.dart';
import '../atoms/input_field.dart';
import '../atoms/primary_button.dart';
import '../atoms/social_button.dart';
import '../molecules/form_checkbox.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool _isLoading = false;
  bool _rememberMe = false;
  bool _obscurePassword = true;

  void _handleLogin() async {
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      ref.read(authProvider.notifier).login();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthTemplate(
      showBackButton: false,
      title: 'Log in',
      subtitle: 'Enter your email and password to securely access\nyour account and manage your services.',
      child: Column(
        children: [
          const InputField(
            hintText: 'Email address',
            prefixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          InputField(
            hintText: 'Password',
            obscureText: _obscurePassword,
            prefixIcon: Icons.lock_outline,
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                color: Colors.grey.shade500,
              ),
              onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FormCheckbox(
                label: 'Remember me',
                value: _rememberMe,
                onChanged: (val) => setState(() => _rememberMe = val ?? false),
              ),
              TextButton(
                onPressed: () => context.push('/forgot_password'),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          PrimaryButton(
            label: 'Login',
            isLoading: _isLoading,
            onPressed: _handleLogin,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
              ),
              GestureDetector(
                onTap: () => context.push('/signup'),
                child: Text(
                  "Sign Up here",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(child: Divider(color: Colors.grey.shade300)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Or Continue With Account',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                ),
              ),
              Expanded(child: Divider(color: Colors.grey.shade300)),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton(
                icon: const Icon(Icons.facebook, color: Colors.blue),
                onPressed: () {},
              ),
              const SizedBox(width: 24),
              SocialButton(
                icon: Text(
                  'G',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade400,
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 24),
              SocialButton(
                icon: const Icon(Icons.apple, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
