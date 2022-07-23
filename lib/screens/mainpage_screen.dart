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
                children: const [
                  // Card nama pengguna dan selamat datang
                  Card(
                    child: ListTile(),
                  ),
                  SizedBox(),
                  // kartu daftar tanaman
                  Card(
                    child: ListTile(),
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
