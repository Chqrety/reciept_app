import 'package:flutter/material.dart';
import 'package:receipt_app/config/color.config.dart';
import 'package:receipt_app/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 90),
        children: [
          const Text(
            "Selamat Datang",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: ColorConfig.primaryColor),
          ),
          const Text('Silahkan masukkan email dan password'),
          const SizedBox(height: 40),
          const TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: ColorConfig.primaryColor)),
                labelText: 'Email',
                labelStyle: TextStyle(color: ColorConfig.primaryColor),
                hintText: 'Masukkan email'),
          ),
          const SizedBox(height: 20),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: ColorConfig.primaryColor)),
                labelText: 'Username',
                labelStyle: TextStyle(color: ColorConfig.primaryColor),
                hintText: 'Masukkan username'),
          ),
          const SizedBox(height: 20),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: ColorConfig.primaryColor)),
                labelText: 'Password',
                labelStyle: TextStyle(color: ColorConfig.primaryColor),
                hintText: 'Masukkan password'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: ColorConfig.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text(
                'Masuk',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sudah punya akun?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: const Text(
                  'Masuk',
                  style: TextStyle(color: ColorConfig.primaryColor),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
