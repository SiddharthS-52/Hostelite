import 'package:flutter/material.dart';
import 'package:hostelite/edit_profile_Admin.dart';

class NavDrawerAdmin extends StatelessWidget {
  const NavDrawerAdmin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color(0xffFE96FA),
        ),
      child: Drawer(
        child: ListView(

          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffFE96FA),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(''),
                backgroundColor: Colors.orange[100],
                radius: 30,
              ),
            ),

            ListTile(
              title: Text('Kachra Seth',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,

                  fontWeight: FontWeight.bold,
                  color: Color(0xff636363),
                ),
              ),
              tileColor: Color(0xffFE96FA),
            ),
            ListTile(
              tileColor: Color(0xffFE96FA),
              title: Text('Hostel In-Charge',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            ColoredBox(
              color: Color(0xffFFBCF4),
            ),
            ListTile(
              tileColor: Color(0xffFE96FA),
              leading: Icon(Icons.edit),
              title: Text('Edit Profile',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) {
                return EditProfileAdmin();
                }
               ),
                )
              },
            ),
            ListTile(
              tileColor: Color(0xffFE96FA),
              leading: Icon(Icons.notifications),
              title: Text('Notification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              onTap: () => {},
            ),
            ListTile(
              tileColor: Color(0xffFE96FA),
              leading: Icon(Icons.report_problem),
              title: Text('Report Issue',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {},
            ),
            ListTile(
              tileColor: Color(0xffFE96FA),
              leading: Icon(Icons.system_update_alt_outlined),
              title: Text('App Updates',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {},
            ),
            ListTile(
              tileColor: Color(0xffFE96FA),
              leading: Icon(Icons.quick_contacts_dialer_outlined),
              title: Text('Contact Us',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {},
            ),
            ListTile(
              tileColor:Color(0xffFE96FA),
              leading: Icon(Icons.logout),
              title: Text('Log Out',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {},
            ),
            SizedBox(height: 50,
              child: ColoredBox(
                color: Color(0xffFE96FA),
              ),
            ),
            ListTile(
              title: Text('App Version 1.0',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                ),),
              tileColor: Color(0xffFE96FA),
            )
          ],
        ),
      ),
    );
  }
}
