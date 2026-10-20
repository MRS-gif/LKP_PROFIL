import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilMahasiswa(),
    );
  }
}

class ProfilMahasiswa extends StatelessWidget {
  const ProfilMahasiswa({super.key});

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
          const Text(': '),
          Expanded(child: Text(value, style: const TextStyle(fontSize: 13))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Profil Mahasiswa',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: const [Icon(Icons.more_vert), SizedBox(width: 8)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 8),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person, size: 90, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 12),
            const Text(
              'Muhammad Rafid Sasongko',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Kartu data diri
            Card(
              elevation: 0,
              color: Colors.grey.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Column(
                  children: [
                    _infoRow('NIM', '2395114007'),
                    const Divider(height: 1),
                    _infoRow('Program Studi', 'Teknik Informatika'),
                    const Divider(height: 1),
                    _infoRow('Universitas', "Hasyim asy'ari"),
                    const Divider(height: 1),
                    _infoRow('Hobi / Deskripsi Singkat',
                        'Tidur.'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Kartu informasi tambahan
            Card(
              elevation: 0,
              color: Colors.grey.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      color: Colors.grey.shade300,
                      child: Icon(Icons.image, size: 36, color: Colors.grey.shade600),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Informasi Tambahan',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text('Mahasiswa sedang belajar.',
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade700,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text('Detail'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
