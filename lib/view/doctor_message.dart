import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/const/doctor_const.dart';

class DoctorMessage extends StatelessWidget {
  const DoctorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        DoctorConst.textEmpty,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorWhite,
            ),
      ),
    ));
  }
}
