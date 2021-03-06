import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/screens/AboutUs.dart';
import 'package:shikha_makeover_customer_app/screens/Appointment.dart';
import 'package:shikha_makeover_customer_app/screens/SafetyMeasures.dart';
import 'package:shikha_makeover_customer_app/screens/Services.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        //color: Color(0xffFF7d85),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.person,
                    color: Colors.white70,
                    size: 50.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xfffafafa),
              ),
              accountName: Text(
                'Jiju Thomas',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'sfpro',
                ),
              ),
              accountEmail: null,
            ),
            Divider(
              thickness: 0.5,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.calendar_today,
                    ),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Appointment())),
                    title: Text(
                      'My Appointment',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Services())),
                    leading: Icon(
                      Icons.touch_app,
                    ),
                    title: Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUs())),
                    leading: Icon(
                      Icons.supervised_user_circle,
                    ),
                    title: Text(
                      'About us',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.ac_unit,
                    ),
                    title: Text(
                      'Offers',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_balance,
                    ),
                    title: Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SafetyMeasures())),
                    leading: Icon(
                      Icons.airline_seat_individual_suite,
                    ),
                    title: Text(
                      'Safety Measures',
                      style: TextStyle(
                        fontSize: 18.0,
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
