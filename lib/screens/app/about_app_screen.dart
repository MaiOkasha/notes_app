import 'package:flutter/material.dart';

class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       elevation: 0,
        backgroundColor: Colors.transparent,
        title:const Text('About App',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        ),
        titleSpacing: 88,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/settings_screen');
        },icon: const Icon(Icons.arrow_back_ios,
        size: 24,
          color: Color(0xff000000),
        ),),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('images/background.png',
            fit: BoxFit.cover,
            width: double.infinity,

          ),
          Center(child: Image.asset('images/Component 1 – 1.png'))
        ],
      ),
    );
  }
}
