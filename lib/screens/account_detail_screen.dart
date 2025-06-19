import 'package:flutter/material.dart';
import 'profile_screen.dart';
import '../user_data.dart';

class AccountDetailScreen extends StatefulWidget {
  @override
  State<AccountDetailScreen> createState() => _AccountDetailScreenState();
}

class _AccountDetailScreenState extends State<AccountDetailScreen> {
  final nameController = TextEditingController();
  final nickController = TextEditingController();
  final npmController = TextEditingController();
  final addressController = TextEditingController();
  String selectedProgram = 'Teknik Informatika';

  final List<String> programs = [
    'Teknik Informatika',
    'Sistem Informasi',
    'Manajemen Informatika',
    'Teknik Komputer',
  ];

  void submit() {
    if (nameController.text.isNotEmpty &&
        nickController.text.isNotEmpty &&
        npmController.text.isNotEmpty) {
      UserData.name = nameController.text;
      UserData.nickname = nickController.text;
      UserData.npm = npmController.text;
      UserData.program = selectedProgram;
      UserData.address = addressController.text;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => ProfileScreen()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Isi semua data")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Image.asset('assets/images/vokasi.png',width: 100,height: 100,),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama Lengkap'),
            ),
            TextField(
              controller: nickController,
              decoration: InputDecoration(labelText: 'Nama Panggilan'),
            ),
            TextField(
              controller: npmController,
              decoration: InputDecoration(labelText: 'NPM'),
              keyboardType: TextInputType.number,
            ),
            DropdownButtonFormField<String>(
              value: selectedProgram,
              items:
                  programs
                      .map(
                        (prog) =>
                            DropdownMenuItem(child: Text(prog), value: prog),
                      )
                      .toList(),
              onChanged: (value) => setState(() => selectedProgram = value!),
              decoration: InputDecoration(labelText: 'Program Studi'),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Alamat rumah/kost'),
              maxLines: 2,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: submit,
              child: Text("Daftar"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
