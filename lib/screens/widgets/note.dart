import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  const Note({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 114.5,
          width: 4,
          decoration: const BoxDecoration(
            color: Color(0xff6A90F2),
          ),
        ),
        Container(
          width: 360,
          height: 114.5,
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
            title: const Text(
              'Note Title',
              style:
              TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
            subtitle: const Text(
              'Lorem Ipsum is simply dummy text of th printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s,',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffA5A5A5)),
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/catagory_notes_screen');
                },
                icon: const Icon(
                  Icons.check_circle,
                  color: Color(0xffC4C4C4),
                  size: 24,
                )),
          ),
        ),
        Container(
          height: 114.5,
          width: 4,
          decoration: const BoxDecoration(
            color: Color(0xff6A90F2),
          ),
        )
      ],
    );
  }
}