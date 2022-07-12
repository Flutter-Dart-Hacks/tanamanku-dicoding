import 'package:flutter/material.dart';
import 'package:tanamanku/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String usernamePengguna = '';
  bool isPasswordVisible = false;
  final _textUsernameEditController = TextEditingController(text: '');
  final _textPasswordEditController = TextEditingController(text: '');

  @override
  void initState() {
    isPasswordVisible = false;
    super.initState();
  }

  @override
  void dispose() {
    _textUsernameEditController.dispose();
    _textPasswordEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: sizeScreen.height * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('resources/images/palm_login.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text('Selamat Datang'),
                    const Text('silahkan masuk ke akun anda'),
                    Container(
                      decoration: BoxDecoration(
                        color: inputFieldBg,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan email',
                          hintStyle: const TextStyle(
                            color: iconColorLoginGreen,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          icon: const Icon(
                            Icons.mail,
                            color: iconColorLoginGreen,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                          ),
                        ),
                        controller: _textUsernameEditController,
                        validator: (value) {
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
