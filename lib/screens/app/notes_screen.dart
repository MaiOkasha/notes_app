import 'package:flutter/material.dart';

import '../widgets/note.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, '/catagories_screen');
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            )),
        title: const Text(
          'Category Name',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {

              Navigator.pushNamed(context, '/catagory_notes_screen');

            },
            icon: const Icon(
              Icons.add_circle,
              size: 24,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 25),
        child: ListView(
          children: const [
            Note(),
            SizedBox(
              height: 10.5,
            ),
            Note(),
            SizedBox(
              height: 10.5,
            ),
            Note(),
            SizedBox(
              height: 10.5,
            ),
            Note(),
            SizedBox(
              height: 10.5,
            ),
            Note()


          ],
        ),
      ),
    );
  }
}
