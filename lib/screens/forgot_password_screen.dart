import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final emailController = TextEditingController();

  void sendReset(BuildContext context) {
    if (emailController.text.isNotEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Link reset dikirim ke email")));
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Email tidak boleh kosong")));
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
            Text(
              "Pemulihan Kata Sandi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Masukkan alamat email akun Anda',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => sendReset(context),
              child: Text("Kirim"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
