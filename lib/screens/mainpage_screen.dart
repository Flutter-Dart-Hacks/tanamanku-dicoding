import 'package:flutter/material.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                children: const [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
