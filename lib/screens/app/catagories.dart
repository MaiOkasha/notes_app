import 'package:flutter/material.dart';

import '../widgets/catagories_widget.dart';

class CatagoriesScreen extends StatefulWidget {
  const CatagoriesScreen({Key? key}) : super(key: key);

  @override
  State<CatagoriesScreen> createState() => _CatagoriesScreenState();
}

class _CatagoriesScreenState extends State<CatagoriesScreen> {
  //int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Categories',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        titleSpacing: 88,

        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings_screen');
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 24,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 18,left: 20),
        child: Column(
          children: const [
            SizedBox(
              height: 25,
            ),
            CatagoriesWidget(),
            SizedBox(
              height: 10,
            ),
            CatagoriesWidget(),
            SizedBox(
              height: 10,
            ),
            CatagoriesWidget(),
            SizedBox(
              height: 10,
            ),
            CatagoriesWidget(),
            SizedBox(
              height: 10,
            ),
            CatagoriesWidget(),
            SizedBox(
              height: 10,
            ),
            CatagoriesWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: const Icon(Icons.add),
        backgroundColor: const Color(0xff6A90F2),
        onPressed: () {


          Navigator.pushNamed(context, '/create_catagory_screen');
        },
      ),
    );
  }
}
