import 'package:flutter/material.dart';

class CatagoryNotesScreen extends StatefulWidget {
  const CatagoryNotesScreen({Key? key}) : super(key: key);

  @override
  State<CatagoryNotesScreen> createState() => _CatagoryNotesScreenState();
}

class _CatagoryNotesScreenState extends State<CatagoryNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, '/notes_screen');
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'New Note',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                'Create note',
                style: TextStyle(
                    color: Color(0xff9391A4),
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            const TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0)),
                  ),
                  hintText: 'Note Tile',
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                )),
            const SizedBox(
              height: 20,
            ),
            const TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0)),
                  ),
                  hintText: 'Description',
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(
                      fontSize: 22,
                      color: Color(0xff9391A4),
                      fontWeight: FontWeight.w300),
                )),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Save'),
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff6A90F2),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                  // fixedSize: const Size(100,100),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            )
          ],
        ),
      ),
    );
  }
}
