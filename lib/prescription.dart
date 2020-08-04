import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screen_util.dart';

class Prescription extends StatelessWidget {
  const Prescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        SizedBox(
          height: ScreenUtil(context).setHeight(height: 2),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(15),
          height: ScreenUtil(context).setHeight(height: 10),
          width: ScreenUtil(context).setWidth(width: 80),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xFFF3EFEF),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFFBBC3D0),
                    ),
                    onPressed: () {}),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
                child: Text(
                  'S',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil(context).setSp(percentage: 60),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: ScreenUtil(context).setHeight(height: 2),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: ScreenUtil(context).setHeight(height: 30),
          width: ScreenUtil(context).setWidth(width: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('assets/img/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: ScreenUtil(context).setHeight(height: 5),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFFF3EFEF),
              style: BorderStyle.solid,
            ),
          ),
          child: ListTile(
            title: Text(
              'Prescription 1',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: ScreenUtil(context).setSp(percentage: 60),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              'Submitted',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: ScreenUtil(context).setSp(percentage: 35),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFFF3EFEF),
              style: BorderStyle.solid,
            ),
          ),
          child: ListTile(
            title: Text(
              'Prescription 2',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: ScreenUtil(context).setSp(percentage: 60),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              'Submitted',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: ScreenUtil(context).setSp(percentage: 35),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFFF3EFEF),
              style: BorderStyle.solid,
            ),
          ),
          child: ListTile(
            title: Text(
              'Prescription 3',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: ScreenUtil(context).setSp(percentage: 60),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              'Submitted',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: ScreenUtil(context).setSp(percentage: 35),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFFF3EFEF),
              style: BorderStyle.solid,
            ),
          ),
          child: ListTile(
            title: Text(
              'Prescription 4',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: ScreenUtil(context).setSp(percentage: 60),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              'Submitted',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: ScreenUtil(context).setSp(percentage: 35),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
