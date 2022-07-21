import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _firstNameTextController;
  late TextEditingController _lastNameTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _phoneTextController;
  late TextEditingController _passwordTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameTextController = TextEditingController();
    _lastNameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _phoneTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _firstNameTextController.dispose();
    _lastNameTextController.dispose();
    _emailTextController.dispose();
    _phoneTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login_screen');
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 24,
                color: Colors.black,
              )),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Image.asset(
              'images/background.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      'Sign Up',
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const Text(
                      'Create an account',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff9391A4)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 360,
                  width: 380,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 40, bottom: 40),
                    child: Column(
                      children: [
                        TextField(
                          controller: _firstNameTextController,
                          decoration: const InputDecoration(
                            hintText: 'First Name',
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                                fontSize: 22, color: Color(0xff9391A4)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: const Color(0xffD0D0D0))),
                          ),
                        ),
                        TextField(
                          controller: _lastNameTextController,
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD0D0D0)),
                            ),
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15, 20, 15),
                            hintText: 'Last Name',
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                                fontSize: 22, color: Color(0xff9391A4)),
                          ),
                        ),
                        TextField(
                          controller: _emailTextController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD0D0D0)),
                            ),
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15, 20, 15),
                            hintText: 'Email',
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                                fontSize: 22, color: Color(0xff9391A4)),
                          ),
                        ),
                        TextField(
                          controller: _phoneTextController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD0D0D0)),
                            ),
                            hintText: 'Phone',
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                                fontSize: 22, color: Color(0xff9391A4)),
                          ),
                        ),
                        TextField(
                          controller: _passwordTextController,
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD0D0D0)),
                            ),
                            hintText: 'Password',
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                                fontSize: 22, color: Color(0xff9391A4)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: _performLogin,
                    child: const Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff6A90F2),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 140, vertical: 15),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                )
              ],
            ),
          ],
        ));
  }

  void _performLogin() {
    if (_checkData()) {
      _login();
    }
  }

  bool _checkData() {
    if (_firstNameTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty &&
        _lastNameTextController.text.isNotEmpty &&
        _emailTextController.text.isNotEmpty &&
        _phoneTextController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  void _login() {
    ScaffoldMessenger.of(context)
        .showSnackBar(
          const SnackBar(
            content: Text('Singed in successfully'),
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
        )
        .closed
        .then((value) => Navigator.pushNamed(context, '/catagories_screen'));
  }
}
