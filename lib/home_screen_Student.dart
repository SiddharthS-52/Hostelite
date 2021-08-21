import'package:flutter/material.dart';
import 'package:hostelite/complaintStudent.dart';
import 'package:hostelite/drawer.dart';
import 'package:hostelite/mark_exit.dart';
import 'package:hostelite/exit_entryStudent.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreenStudent extends StatefulWidget {
  const HomeScreenStudent({Key key}) : super(key: key);

  @override
  _HomeScreenStudentState createState() => _HomeScreenStudentState();
}

class _HomeScreenStudentState extends State<HomeScreenStudent> {
  CalendarController _controller;
  void initState(){
    super.initState();
    _controller = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4,25,4,0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  MaterialButton(
                    height: 35,
                    minWidth: 30,
                    splashColor: Colors.pink,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NavDrawer();
                          }),
                      );
                    },
                    child: Image(
                      image: AssetImage('assets/home_Screen_Student/Group 33636.png'),
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/H_of_Hostelite.jpg'),
                                width: 50,
                                height: 50,
                              ),
                              Image(
                                image: AssetImage('assets/ostellite.png'),
                                width: 100,
                                height: 50,
                              ),
                            ],
                          )
                      ),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/Rectangle 368.png'),
                              width: 50,
                              height: 10,
                            ),
                            SizedBox(width: 5),
                            Image(
                              image: AssetImage('assets/Your Hostel Companion.png'),
                              width: 100,
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                  ],
              ),
                  SizedBox(width: 40),
                  Container(
                    width: 30,
                    height: 30,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.notifications,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Hello,',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Let's manage your Hostel Things",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 10,
              ),
              ),
              SizedBox(height: 10),
              Text('Quick Access',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 210,
                    child: MaterialButton(
                      focusElevation: 80,
                      autofocus: true,
                      minWidth: 100,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) {
                                return StudentComplaint();
                              }),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/home_Screen_Student/2720490 1.png'),
                          ),
                          Text('Post a',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          ),
                          Text('Complaint',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Container(
                        width: 170,
                        height: 100,
                        child: MaterialButton(
                          color: Colors.pinkAccent[100],
                          minWidth: 100,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MarkingEntry();
                                }
                              ),
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/home_Screen_Student/bermuda-747 1.png'),
                              ),
                              Column(
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Text('Mark',
                                  style: TextStyle(
                                    color: Colors.redAccent[400],
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Text('Entry',
                                  style: TextStyle(
                                    color: Colors.redAccent[400],
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 170,
                        height: 100,
                        child: MaterialButton(
                          color: Colors.greenAccent,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) {
                                    return MarkingExit();
                                  }
                              ),
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/home_Screen_Student/sign-in-4 1.png'),
                              ),
                              Column(
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Text('Mark',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('Exit',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
              Container(
                width: 350,
                height: 265,
                child: TableCalendar(
                  initialCalendarFormat: CalendarFormat.month,
                  calendarStyle: CalendarStyle(
                    highlightSelected: true,
                    todayStyle: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  headerStyle: HeaderStyle(
                    centerHeaderTitle: true,
                    formatButtonDecoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    formatButtonShowsNext: true,
                    formatButtonTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  startingDayOfWeek: StartingDayOfWeek.monday, calendarController: _controller,
                  /*onDaySelected: (date,evants){
                    print(date.toUtc());
                  },*/
                ),
              ),
              SizedBox(height: 0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey[300],
                  )
                ),
                height: 45,
                width: 378,
                child: Row(
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      child: Icon(
                       Icons.home_filled,
                      ),
                    ),
                    //SizedBox(width: 10),
                    MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.graphic_eq,
                      ),
                    ),
                    //SizedBox(width: 10),
                    MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.watch_later,
                      ),
                    ),
                    //SizedBox(width: 10),
                    MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.person,
                      ),
                    ),
                  ],
                ),
              )
            ],
            ),
        ),
      )
      );

  }
}
