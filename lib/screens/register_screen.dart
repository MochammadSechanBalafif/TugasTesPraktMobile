import 'package:flutter/material.dart';
import 'account_detail_screen.dart';
import '../user_data.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

  void proceed() {
    if (emailController.text.isNotEmpty &&
        passwordController.text.length >= 8 &&
        phoneController.text.isNotEmpty) {
      UserData.email = emailController.text;
      UserData.password = passwordController.text;
      UserData.phone = phoneController.text;

      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => AccountDetailScreen()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Isi semua data dengan benar")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image.asset('assets/images/vokasi.png',width: 100,height: 100,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Alamat Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Kata Sandi'),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Nomor HP'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: proceed,
              child: Text("Lanjut"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
