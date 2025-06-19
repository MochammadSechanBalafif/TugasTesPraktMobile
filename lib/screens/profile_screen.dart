import 'package:flutter/material.dart';
import '../user_data.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil"), leading: BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.orange,
                child: Text(
                  UserData.nickname.isNotEmpty
                      ? UserData.nickname[0].toUpperCase()
                      : '?',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Column(
                children: [
                  Text(
                    UserData.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(UserData.email),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NPM: ${UserData.npm}"),
                  Text("Program Studi: ${UserData.program}"),
                  Text("Nomor HP: ${UserData.phone}"),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("Nama Panggilan"),
              subtitle: Text(UserData.nickname),
            ),
            ListTile(
              title: Text("Alamat Rumah"),
              subtitle: Text(UserData.address),
            ),
          ],
        ),
      ),
    );
  }
}
