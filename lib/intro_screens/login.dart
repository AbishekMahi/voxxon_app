import 'package:flutter/material.dart';
import 'package:voxxon/utils/constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // final bool _loading = false;

  // bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Scaffold(
        backgroundColor: appBgColor,
        body: Center(
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Pure Thin',
            ),
          ),
        ),
      ),
    );
  }
}
