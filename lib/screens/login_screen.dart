import 'package:flutter/material.dart';
import 'package:tanamanku/constants.dart';
import 'package:tanamanku/datascreen/login_args.dart';
import 'package:tanamanku/screens/mainpage_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String usernamePengguna = '';
  String passwordPengguna = '';
  bool isPasswordVisible = false;
  final _textUsernameEditController = TextEditingController(text: '');
  final _textPasswordEditController = TextEditingController(text: '');

  @override
  void initState() {
    isPasswordVisible = false;
    super.initState();
    _textUsernameEditController.addListener(saveStateUsernameValue);
    _textPasswordEditController.addListener(saveStatePasswordValue);
  }

  @override
  void dispose() {
    _textUsernameEditController.dispose();
    _textPasswordEditController.dispose();
    super.dispose();
  }

  void saveStateUsernameValue() {
    String stringusername = _textUsernameEditController.text;
    setState(() {
      usernamePengguna = stringusername;
    });
  }

  void saveStatePasswordValue() {
    String passwordpengguna = _textPasswordEditController.text;
    setState(() {
      passwordPengguna = passwordpengguna;
    });
  }

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
                child: Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Selamat Datang',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: primaryColorGreen,
                          ),
                        ),
                        Text(
                          'silahkan masuk ke akun anda',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: primaryColorGreen.withOpacity(0.7),
                          ),
                        ),
                        // Email input
                        Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10,
                            bottom: 20,
                          ),
                          decoration: BoxDecoration(
                            color: inputFieldBg,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 14,
                              right: 10,
                              top: 10,
                            ),
                            child: TextFormField(
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                counterText: '',
                                isDense: true,
                                counter: const SizedBox.shrink(),
                                contentPadding: const EdgeInsets.only(
                                  top: 10,
                                  right: 10,
                                ),
                                filled: true,
                                fillColor: inputFieldBg,
                                hintText: 'Masukkan nama pengguna',
                                hintStyle: const TextStyle(
                                  color: iconColorLoginGreen,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                icon: const Icon(
                                  Icons.mail,
                                  color: iconColorLoginGreen,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                              ),
                              controller: _textUsernameEditController,
                              validator: (String? value) {
                                if (value != null && value.isEmpty) {
                                  return 'Masukkan nama pengguna';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                              maxLength: 64,
                            ),
                          ),
                        ),
                        // Password input
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            color: inputFieldBg,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 14,
                              right: 10,
                              top: 10,
                            ),
                            child: TextFormField(
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                counterText: '',
                                isDense: true,
                                counter: const SizedBox.shrink(),
                                contentPadding: const EdgeInsets.only(
                                  top: 5,
                                  right: 10,
                                ),
                                filled: true,
                                fillColor: inputFieldBg,
                                hintText: 'Masukkan password',
                                hintStyle: const TextStyle(
                                  color: iconColorLoginGreen,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                icon: const Icon(
                                  Icons.lock,
                                  color: iconColorLoginGreen,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isPasswordVisible = !isPasswordVisible;
                                    });
                                  },
                                  icon: Icon(
                                    isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: iconColorLoginGreen,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                              ),
                              controller: _textPasswordEditController,
                              validator: (String? value) {
                                if (value != null && value.isEmpty) {
                                  return 'Masukkan password';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                              maxLength: 64,
                              obscureText: !isPasswordVisible,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Lupa Password?',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: primaryColorGreen,
                                ),
                              ),
                            )
                          ],
                        ),
                        // Tombol masuk ke aplikasi
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(
                            top: 20,
                            left: 16,
                            right: 16,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Ambil user input dan navigasi halaman utama
                              validasiIsianPengguna(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: primaryColorGreen,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: const Text(
                                'Masuk ke Aplikasi',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Tidak punya akun?',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: primaryColorGreen,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Daftar',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  decoration: TextDecoration.underline,
                                  decorationColor: primaryColorGreen,
                                  decorationThickness: 2,
                                  color: primaryColorGreen,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void validasiIsianPengguna(BuildContext context) {
    if (usernamePengguna.trim().isNotEmpty) {
      if (passwordPengguna.trim().isNotEmpty) {
        navigasiSetelahLoginHalamanUtama(context);
      } else {
        showToastPengguna(context, message: 'Isi password dengan benar');
      }
    } else {
      showToastPengguna(context, message: 'Masukkan nama anda');
    }
  }

  void navigasiSetelahLoginHalamanUtama(BuildContext context) {
    // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
    //   return const MainPageScreen();
    // }), (route) => false);
    Navigator.pushNamedAndRemoveUntil(
      context,
      MainPageScreen.routeName,
      (route) => false,
      arguments: LoginArguments(usernamePengguna, passwordPengguna),
    );
  }

  void showToastPengguna(BuildContext context, {String message = ''}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        action: SnackBarAction(
            label: 'OK',
            textColor: Colors.orange,
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            }),
      ),
    );
  }
}
