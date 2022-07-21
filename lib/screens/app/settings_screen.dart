import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
          Navigator.pushNamed(context, '/catagories_screen');
        }, icon: const Icon(Icons.arrow_back_ios,
        size: 24,
          color: Colors.black,
        )
        ),
        title:const  Text('Settings',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),

        ),
        titleSpacing: 88,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xff6A90F2
              ),
              radius: 35,
              child: Text('M',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.white
              ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Mila Paraise',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15
            ),

            ),
            const Text('mila.paraise@gmail.com',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                color: Color(0xffA5A5A5)
              ),
            ),
            const Divider(
              thickness: 1,
              endIndent: 40,
              indent: 40,
              color: Color(0xffD0D0D0),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 4,
                   color: const Color(0xff6A90F2)
                ),
                Container(
                  width: 340,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffbdbdbd),
                        offset: Offset(0.0, 0.1), //(x,y)
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff6A90F2),
                      radius: 24,
                      child: Icon(Icons.language,
                      size: 24,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('Language',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                    ),
                    subtitle: Text('Selected language: EN',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA5A5A5)
                    ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,
                    size: 24,
                      color: Colors.black,
                    ),

                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [

                Container(
                  width: 340,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffbdbdbd),
                        offset: Offset(0.0, 0.1), //(x,y)
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child:  ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Color(0xff6A90F2),
                      radius: 24,
                      child: Icon(Icons.perm_identity,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text('Profile',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                    subtitle: const Text('Update your data…',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA5A5A5)
                      ),
                    ),
                    trailing: IconButton(onPressed: (){
                      Navigator.pushNamed(context, '/profile_screen');
                    }, icon: const Icon(Icons.arrow_forward_ios,
                      size: 24,
                      color: Colors.black,
                    )),

                  ),
                ),

                Container(
                    height: 70,
                    width: 4,
                    color: const Color(0xff6A90F2)
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              children: [
                Container(
                    height: 70,
                    width: 4,
                    color: const Color(0xff6A90F2)
                ),
                Container(
                  width: 340,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffbdbdbd),
                        offset: Offset(0.0, 0.1), //(x,y)
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Color(0xff6A90F2),
                      radius: 24,
                      child: Icon(Icons.device_unknown,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text('About App',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                    subtitle: const Text('What is notes app?',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA5A5A5)
                      ),
                    ),
                    trailing: IconButton(onPressed: (){
                      Navigator.pushNamed(context, '/about_app_screen');
                    }, icon: const Icon(Icons.arrow_forward_ios,
                      size: 24,
                      color: Colors.black,
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 340,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffbdbdbd),
                        offset: Offset(0.0, 0.1), //(x,y)
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff6A90F2),
                      radius: 24,
                      child: Icon(Icons.error,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('About course',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                    subtitle: Text('Describe the course in brief',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA5A5A5)
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,
                      size: 24,
                      color: Colors.black,
                    ),

                  ),
                ),

                Container(
                    height: 70,
                    width: 4,
                    color: const Color(0xff6A90F2)
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    height: 70,
                    width: 4,
                    color: const Color(0xff6A90F2)
                ),
                Container(
                  width: 340,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffbdbdbd),
                        offset: Offset(0.0, 0.1), //(x,y)
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Color(0xff6A90F2),
                      radius: 24,
                      child: Icon(Icons.fullscreen_exit,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text('Log out',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                    subtitle: const Text('Waiting your return…',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA5A5A5)
                      ),
                    ),
                    trailing: IconButton(onPressed: (){
                      Navigator.pushNamed(context, '/about_app_screen');
                    }, icon: const Icon(Icons.arrow_forward_ios,
                      size: 24,
                      color: Colors.black,
                    )),
                  ),
                ),
              ],
            )









          ],
        ),
      ),

    );
  }
}
