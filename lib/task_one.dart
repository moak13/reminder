import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screen_util.dart';

class TaskOne extends StatefulWidget {
  TaskOne({Key key}) : super(key: key);

  @override
  _TaskOneState createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: ScreenUtil(context).setHeight(height: 30),
              width: ScreenUtil.screenWidth,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil(context).setHeight(height: 2),
                  ),
                  Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil(context).setWidth(width: 20),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'My Reminders',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  ScreenUtil(context).setSp(percentage: 40),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 8,
                      bottom: 10,
                    ),
                    padding: const EdgeInsets.all(10),
                    height: ScreenUtil(context).setHeight(height: 18),
                    width: ScreenUtil.screenWidth,
                    child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        scrollDirection: Axis.horizontal,
                        itemCount: calender.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                calender.forEach(
                                    (element) => element.isClicked = false);
                                calender[index].isClicked = true;
                              });
                            },
                            child: CalenderCard(
                              date: calender[index].date,
                              day: calender[index].day,
                              isClicked: calender[index].isClicked,
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 4.0),
              child: ListTile(
                leading: Image.asset('assets/img/icon_feather_sun.png'),
                title: Text('Before Breakfast'),
                trailing: InkWell(
                  onTap: () {},
                  child: Container(
                    height: ScreenUtil(context).setHeight(height: 5),
                    width: ScreenUtil(context).setWidth(width: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.blueAccent,
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
                    color: Colors.blue[100],
                    style: BorderStyle.solid,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue[50],
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: Container(
                        height: ScreenUtil(context).setHeight(height: 10),
                        width: ScreenUtil(context).setWidth(width: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue[100],
                        ),
                        child: Transform.rotate(
                          angle: pi / -4,
                          child: Image.asset(
                              'assets/img/icon_feather_injection.png'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Zoloft',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize:
                                      ScreenUtil(context).setSp(percentage: 60),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil(context).setWidth(width: 2),
                            ),
                            Text(
                              '50 mg',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      ScreenUtil(context).setSp(percentage: 40),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '7:00 AM',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.blue,
                              fontSize:
                                  ScreenUtil(context).setSp(percentage: 35),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 4.0),
              child: ListTile(
                leading: Image.asset('assets/img/icon_feather_noon.png'),
                title: Text('After Breakfast'),
                trailing: InkWell(
                  onTap: () {},
                  child: Container(
                    height: ScreenUtil(context).setHeight(height: 5),
                    width: ScreenUtil(context).setWidth(width: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.blueAccent,
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
                    color: Colors.blue[100],
                    style: BorderStyle.solid,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue[50],
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: Container(
                        height: ScreenUtil(context).setHeight(height: 10),
                        width: ScreenUtil(context).setWidth(width: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue[100],
                        ),
                        child: Transform.rotate(
                          angle: pi / -4,
                          child:
                              Image.asset('assets/img/icon_feather_pills.png'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Ativan',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize:
                                      ScreenUtil(context).setSp(percentage: 60),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil(context).setWidth(width: 2),
                            ),
                            Text(
                              '20 mg',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      ScreenUtil(context).setSp(percentage: 40),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '7:00 AM',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.blue,
                              fontSize:
                                  ScreenUtil(context).setSp(percentage: 35),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue[100],
                    style: BorderStyle.solid,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue[50],
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: Container(
                        height: ScreenUtil(context).setHeight(height: 10),
                        width: ScreenUtil(context).setWidth(width: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue[100],
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Transform.rotate(
                            angle: pi / 2,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Container(
                                height: ScreenUtil(context)
                                    .setHeight(height: 0.0009),
                                width:
                                    ScreenUtil(context).setWidth(width: 0.01),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Metoprolol',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize:
                                      ScreenUtil(context).setSp(percentage: 60),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil(context).setWidth(width: 2),
                            ),
                            Text(
                              '100 mg',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      ScreenUtil(context).setSp(percentage: 40),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '7:00 AM',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.blue,
                              fontSize:
                                  ScreenUtil(context).setSp(percentage: 35),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      height: ScreenUtil(context).setHeight(height: 5),
                      width: ScreenUtil(context).setWidth(width: 10),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Add Medication',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: ScreenUtil(context).setSp(percentage: 50),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalenderCard extends StatelessWidget {
  final String date;
  final String day;
  bool isClicked;
  CalenderCard({
    Key key,
    this.date,
    this.day,
    this.isClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil(context).setHeight(height: 12),
      width: ScreenUtil(context).setWidth(width: 20),
      decoration: BoxDecoration(
        color: isClicked ? Colors.blueAccent[100] : Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            date,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: ScreenUtil(context).setSp(percentage: 100),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            day,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.grey[300],
                fontSize: ScreenUtil(context).setSp(percentage: 50),
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Calender {
  final String date;
  final String day;
  bool isClicked;

  Calender({this.date, this.day, this.isClicked});
}

List<Calender> calender = [
  Calender(date: '8', day: 'Mon', isClicked: false),
  Calender(date: '9', day: 'Tue', isClicked: false),
  Calender(date: '10', day: 'Wed', isClicked: false),
  Calender(date: '11', day: 'Thu', isClicked: false),
  Calender(date: '12', day: 'Fri', isClicked: false),
  Calender(date: '13', day: 'Sat', isClicked: false),
  Calender(date: '14', day: 'Sun', isClicked: false),
];
