import 'package:flutter/material.dart';
import 'package:tanamanku/constants.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColorGreen,
        title: const Text(
          'Tanamanku',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Card nama pengguna dan selamat datang
                  Card(
                    color: primaryColorGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Selamat datang',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Berikut daftar tanaman kamu yang perlu dirawat',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(),
                  // kartu daftar tanaman
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'resources/images/img_succulent.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: const Text('nama tanaman'),
                      subtitle: Column(
                        children: const [
                          Text('Deskripsi tanaman'),
                          Text('Waktu penyiraman'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
