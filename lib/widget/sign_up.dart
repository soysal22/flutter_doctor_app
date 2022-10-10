import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/const/doctor_const.dart';
import 'package:flutter_doctor_app/view/doctor_bottom_bar.dart';
import 'package:flutter_doctor_app/view/doctor_log_in.dart';

class DoctorSignUp extends StatelessWidget {
  const DoctorSignUp({super.key});

  final double _maxRadius = 30;
  final double _iconSize = 40;
  final int _flex3 = 3;
  final int _flex7 = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DoctorConst.colorDark,
      body: Column(
        children: [
          Spacer(
            flex: _flex3,
          ),
          Expanded(
            flex: _flex7,
            child: Container(
              decoration: BoxDecoration(
                  color: DoctorConst.colorDarkGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: DoctorConst.radiusCircular40,
                      topRight: DoctorConst.radiusCircular40)),
              child: Padding(
                padding: DoctorConst.padding20,
                child: _columnBody(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _columnBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _rowIconCircleAvatar(context),
        Column(
          children: [
            _textTitle(context),
            DoctorConst.sizedBoxHeight15,
            _textInformation(context),
            DoctorConst.sizedBoxHeight30,
            logInTextField(
              hintText: DoctorConst.textField,
              keyboardType: TextInputType.name,
            ),
            DoctorConst.sizedBoxHeight15,
            logInTextField(
              hintText: DoctorConst.textFieldEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            DoctorConst.sizedBoxHeight15,
            logInTextField(
              hintText: DoctorConst.textFieldPassword,
              keyboardType: TextInputType.visiblePassword,
            ),
            DoctorConst.sizedBoxHeight15,
            logInTextField(
              hintText: DoctorConst.textFieldConfirmPassword,
              keyboardType: TextInputType.visiblePassword,
            ),
          ],
        ),
        _gestureDedectorContainerButton(context),
      ],
    );
  }

  Row _rowIconCircleAvatar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => DoctorBottomBar()));
          },
          child: CircleAvatar(
            backgroundColor: DoctorConst.colorPuple,
            child: Icon(
              Icons.arrow_back,
              color: DoctorConst.colorWhite,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => DoctorLogIn()));
          },
          child: CircleAvatar(
            backgroundColor: DoctorConst.colorPuple,
            child: Icon(
              Icons.close,
              color: DoctorConst.colorWhite,
            ),
          ),
        )
      ],
    );
  }

  final double _height = 16;

  GestureDetector _gestureDedectorContainerButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DoctorBottomBar(),
        ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / _height,
        decoration: BoxDecoration(
            color: DoctorConst.colorLightGreen,
            borderRadius: DoctorConst.borderRadiusCircular20),
        child: Center(
          child: Text(DoctorConst.signIn,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: DoctorConst.colorWhite,
                  )),
        ),
      ),
    );
  }

  Row _rowCircleAvatarIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DoctorBottomBar(),
            ));
          },
          child: CircleAvatar(
            maxRadius: _maxRadius,
            child: Icon(
              Icons.arrow_back,
              size: _iconSize,
              color: DoctorConst.colorWhite,
            ),
          ),
        )
      ],
    );
  }
}

final double _fontSize = 18;

Text _textInformation(BuildContext context) {
  return Text(DoctorConst.textYourInformation,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
          color: DoctorConst.colorGrey,
          fontWeight: FontWeight.bold,
          fontSize: _fontSize));
}

final double _fontSizeRegister = 27;

Text _textTitle(BuildContext context) {
  return Text(DoctorConst.textRegister,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: DoctorConst.colorBlack,
          fontWeight: FontWeight.bold,
          fontSize: _fontSizeRegister));
}

class logInTextField extends StatelessWidget {
  const logInTextField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
  }) : super(key: key);

  final String hintText;

  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular20),
        hintText: hintText,
        hintStyle: TextStyle(color: DoctorConst.colorBlack),
      ),
      controller: TextEditingController(),
      obscureText: false,
      keyboardType: keyboardType,
    );
  }
}
