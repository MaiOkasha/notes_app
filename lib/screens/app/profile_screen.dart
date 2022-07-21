import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings_screen');
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: Colors.black,
            )),
        title: const Text(
          'Profile',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        titleSpacing: 88,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
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
                    child: Text(
                      'M',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                title: Text(
                  'Mila Paraise',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'mila.paraise@gmail.com',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA5A5A5)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  width: 85,
                  height: 58,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xff6A90F2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Catagories',
                        style: TextStyle(
                          color: Color(0xff6A90F2),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '14',
                        style: TextStyle(
                            color: Color(0xffA5A5A5),
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  width: 85,
                  height: 58,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xff6A90F2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Done Notes',
                        style: TextStyle(
                          color: Color(0xff6A90F2),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '14',
                        style: TextStyle(
                            color: Color(0xffA5A5A5),
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  width: 85,
                  height: 58,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xff6A90F2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Waiting Notes',
                        style: TextStyle(
                          color: Color(0xff6A90F2),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '14',
                        style: TextStyle(
                            color: Color(0xffA5A5A5),
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            Card(
              elevation: 8,
              shadowColor: const Color(0xff707070),
              child: Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [

                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffD0D0D0)
                          )
                        ),

                        hintText: 'Mila',
                        fillColor: Colors.white,
                       //contentPadding: const EdgeInsets.only(top: 20),
                        // constraints: const BoxConstraints(minHeight: 50, maxHeight: 60),
                        filled: true,
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffD0D0D0)
                            )
                        ),
                        hintText: 'Paraise',
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffD0D0D0)
                            )
                        ),
                        hintText: 'Phone',
                        fillColor: Colors.white,
                        //contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                        // constraints: const BoxConstraints(minHeight: 50, maxHeight: 60),
                        filled: true,
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA5A5A5),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffD0D0D0)
                            )
                        ),
                        hintText: 'mila.paraise@gmail.com',
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Save'),
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff6A90F2),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 160, vertical: 15),
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
