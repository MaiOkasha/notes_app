import 'package:flutter/material.dart';

class CatagoriesWidget extends StatelessWidget {
  const CatagoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            color: Colors.white,

            boxShadow: [
              BoxShadow(
                color: Color(0xffbdbdbd),
                offset: Offset(0.0, 0.1), //(x,y)
                blurRadius: 3.0,
              ),
            ],
            //boxShadow
          ),
          height: 70,
          width: 340,
          child: const ListTile(
            leading: CircleAvatar(
              child: Text(
                'W',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              radius: 48,
              backgroundColor: Color(0xff6A90F2),
            ),
            title: Text(
              'Work',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111111)),
            ),
            subtitle: Text(
              'Notes for work...',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffA5A5A5)),
            ),
            trailing: Icon(
              Icons.delete,
              size: 16,
              color: Color(0xffD84040),
            ),
          ),
        ),
        Container(
          height: 69.5,
          width: 20,
          decoration: const BoxDecoration(
              color: Color(0xff6A90F2),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/notes_screen');


              },
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
                size: 10,
              )),
        )
      ],
    );
  }
}
