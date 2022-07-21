import 'package:flutter/material.dart';
import 'package:notes_app/screens/app/about_app_screen.dart';
import 'package:notes_app/screens/app/catagories.dart';
import 'package:notes_app/screens/app/catagory_notes_screen.dart';
import 'package:notes_app/screens/app/create_catagory_screen.dart';
import 'package:notes_app/screens/app/notes_screen.dart';
import 'package:notes_app/screens/app/profile_screen.dart';
import 'package:notes_app/screens/app/settings_screen.dart';
import 'package:notes_app/screens/auth/login_screen.dart';
import 'package:notes_app/screens/auth/register_screen.dart';
import 'package:notes_app/screens/launch_screen.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      initialRoute: '/launch_screen' ,

      routes: {

        '/launch_screen' : (context)=> const LaunchScreen(),
        '/login_screen' : (context)=> const LoginScreen(),
        '/register_screen': (context) => const RegisterScreen(),
        '/catagories_screen' : (context) => const CatagoriesScreen(),
        '/create_catagory_screen' : (context)=> const CreateCatagoryScreen(),
        '/catagory_notes_screen' : (context)=> const CatagoryNotesScreen(),
        '/about_app_screen' : (context)=> const AboutAppScreen(),
        '/notes_screen' : (context)=> const NotesScreen(),
        '/settings_screen' : (context)=> const SettingsScreen(),
        '/profile_screen':(context)=> const ProfileScreen()

      },
    );
  }
}
