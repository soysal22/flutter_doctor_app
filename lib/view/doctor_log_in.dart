import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/const/doctor_const.dart';
import 'package:flutter_doctor_app/view/doctor_bottom_bar.dart';
import 'package:flutter_doctor_app/widget/sign_up.dart';

class DoctorLogIn extends StatelessWidget {
  const DoctorLogIn({super.key});

  final double _height2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: DoctorConst.colorDark,
  
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              height: MediaQuery.of(context).size.height / _height2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: DoctorConst.radiusCircular40,
                      topRight: DoctorConst.radiusCircular40),
                  color: DoctorConst.colorDarkGrey),
              child: Padding(
                padding: DoctorConst.paddinglogIn,
                child: _columnSignIn(context),
              )),
        ],
      ),);
  }
}

Column _columnSignIn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          _textTitle(context),
          DoctorConst.sizedBoxHeight15,
          _textInformation(context),
          DoctorConst.sizedBoxHeight15,
          logInTextField(
              hintText: DoctorConst.textFieldEmail,
              keyboardType: TextInputType.emailAddress),
          DoctorConst.sizedBoxHeight15,
          logInTextField(
              hintText: DoctorConst.textFieldPassword,
              keyboardType: TextInputType.name),
        ],
      ),
      Column(
        children: [
          _containerButton(context),
          DoctorConst.sizedBoxHeight15,
          _rowTextsAlreadySigup(context)
        ],
      )
    ],
  );
}

Container _containerButton(BuildContext context) {
  final double _height16 = 16;
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height / _height16,
    decoration: BoxDecoration(
        color: DoctorConst.colorLightGreen,
        borderRadius: DoctorConst.borderRadiusCircular20),
    child: Center(
      child: Text(DoctorConst.signIn,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: DoctorConst.colorWhite,
              )),
    ),
  );
}

Row _rowTextsAlreadySigup(BuildContext context) {
  final double _fontSize18 = 18;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(DoctorConst.textAlready,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: DoctorConst.colorGrey,
                fontWeight: FontWeight.bold,
                fontSize: _fontSize18,
              )),
      DoctorConst.sizedBoxWidth10,
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => DoctorSignUp(),
          ));
        },
        child: Text(DoctorConst.signUp,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: DoctorConst.colorLightGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: _fontSize18,
                )),
      ),
    ],
  );
}

Text _textInformation(BuildContext context) {
  final double _fontSize18 = 18;

  return Text(DoctorConst.textYourInformation,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
          color: DoctorConst.colorGrey,
          fontWeight: FontWeight.bold,
          fontSize: _fontSize18));
}

Text _textTitle(BuildContext context) {
  final double _fontSize27 = 27;

  return Text(DoctorConst.textRegister,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: DoctorConst.colorBlack,
          fontWeight: FontWeight.bold,
          fontSize: _fontSize27));
}
