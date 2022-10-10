import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/const/doctor_const.dart';
import 'package:flutter_doctor_app/view/doctor_detail.dart';
import 'package:flutter_doctor_app/view/doctor_home.dart';
import 'package:flutter_doctor_app/view/doctor_appointment.dart';
import 'package:flutter_doctor_app/view/doctor_message.dart';
import 'package:flutter_doctor_app/view/doctor_log_in.dart';
import 'package:flutter_doctor_app/widget/sign_up.dart';

class DoctorBottomBar extends StatefulWidget {
  const DoctorBottomBar({super.key});

  @override
  State<DoctorBottomBar> createState() => _DoctorBottomBarState();
}

class _DoctorBottomBarState extends State<DoctorBottomBar> {
  int _selectedIndex = 0;
  double _iconSize = 30;

  final List<Widget> screenList = [
    DoctorHome(),
    DoctorMessage(),
    DoctorAppointment(),
    DoctorLogIn(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DoctorConst.colorDark,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: DoctorConst.colorDarkGrey,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: DoctorConst.colorPuple,
        unselectedItemColor: DoctorConst.colorWhite,
        currentIndex: _selectedIndex,
        iconSize: _iconSize,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list_sharp), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: ''),
        ],
      ),
      body: screenList.elementAt(_selectedIndex),
    );
  }
}
