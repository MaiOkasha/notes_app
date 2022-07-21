import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _nameEditingController;
  late TextEditingController _passwordEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _navigateToRegister;
  }

  void _navigateToRegister() =>
      Navigator.pushNamed(context, '/register_screen');

  @override
  void dispose() {
    _nameEditingController.dispose();
    _passwordEditingController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'images/background.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Login to start using app,',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    //  border: Border.symmetric(
                    //  horizontal: BorderSide.none
                    //),
                  ),
                  width: 323,
                  height: 180,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: _nameEditingController,
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD0D0D0)),
                            ),
                            hintText: 'Name',
                            fillColor: Colors.white,
                            //contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                            // constraints: const BoxConstraints(minHeight: 50, maxHeight: 60),
                            filled: true,
                            hintStyle: TextStyle(
                                fontSize: 22, color: Color(0xff9391A4)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: _passwordEditingController,
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD0D0D0)),
                            ),
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15, 20, 15),
                            hintText: 'Password',
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                                fontSize: 22, color: Color(0xff9391A4)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: _performLogin,
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff6A90F2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 140, vertical: 15),
                      // fixedSize: const Size(100,100),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Don\'t have an account',
                    style: const TextStyle(
                        color: Color(0xff707070),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                        recognizer: _tapGestureRecognizer,
                        text: 'Sign up',
                        style: const TextStyle(
                            color: Color(0xff23203F),
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
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
    if (_nameEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  void _login() {
    ScaffoldMessenger.of(context)
        .showSnackBar(
          const SnackBar(
            content: Text('Logged in successfully'),
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
        )
        .closed
        .then((value) =>
            Navigator.pushReplacementNamed(context, '/catagories_screen'));
  }
}
