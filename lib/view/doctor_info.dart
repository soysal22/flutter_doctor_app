import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/const/doctor_const.dart';
import 'package:flutter_doctor_app/view/doctor_bottom_bar.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  final double _left = 60;
  final double _leftt = 280;
  final double _height = 5;
  final double _height18 = 1.8;
  final double _bottom = 50;
  final double _bottomm = 350;
  final double _fontSize29 = 29;

  final double _maxRadiusNone = 65;
  final double _maxRadius = 95;
  final double _maxRadiuss = 75;
  final double _maxRadiusCircle = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: DoctorConst.colorDark,
        child: Column(
              children: [
                _containerStackImage(context),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          _infoTitle(context),
                          DoctorConst.sizedBoxHeight20,
                          _infoContext(context),
                        ],
                      ),
                      _buttonCircleAvatarIcon(context)
                    ],
                  ),
                )
              ],
            ),
      ),
    );
  }

  CircleAvatar _buttonCircleAvatarIcon(context) {
    return CircleAvatar(
      radius: _maxRadiusCircle,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => DoctorBottomBar(),
          ));
        },
        child: Icon(
          Icons.arrow_forward,
          color: DoctorConst.colorWhite,
          size: _bottom,
        ),
      ),
    );
  }

  Text _infoContext(BuildContext context) {
    return Text(DoctorConst.infoContext,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: DoctorConst.colorGrey,
              fontWeight: FontWeight.w500,
            ));
  }

  Text _infoTitle(BuildContext context) {
    return Text(DoctorConst.infoTitle,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4?.copyWith(
            color: DoctorConst.colorWhite,
            fontWeight: FontWeight.bold,
            fontSize: _fontSize29));
  }

  Container _containerStackImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / _height18,
      decoration: BoxDecoration(
          color: DoctorConst.colorPuple,
          borderRadius: BorderRadius.only(
              bottomLeft: DoctorConst.radiusElipitical,
              bottomRight: DoctorConst.radiusElipitical)),
      child: Stack(
        children: [
          _positonedCircleAvatarImage(context),
          _positionedCircleAvatarManImage(context),
          _positionedCirclleAvatarRightHalf()
        ],
      ),
    );
  }

  Positioned _positionedCirclleAvatarRightHalf() {
    return Positioned(
      left: _leftt,
      bottom: _bottomm,
      child: CircleAvatar(
          maxRadius: _maxRadius,
          backgroundColor: DoctorConst.colorBackgroundd,
          child: CircleAvatar(
            maxRadius: _maxRadiusNone,
            backgroundColor: DoctorConst.colorPuple,
          )),
    );
  }

  Positioned _positionedCircleAvatarManImage(BuildContext context) {
    return Positioned(
      right: _left,
      bottom: _bottom,
      child: CircleAvatar(
        maxRadius: _bottom,
        backgroundColor: DoctorConst.colorBlue,
        child: CircleAvatar(
          maxRadius: _maxRadiusCircle,
          backgroundColor: DoctorConst.colorTransparent,
          child: ClipRRect(
            borderRadius: DoctorConst.borderRadiusCircular70,
            child: Image.asset(
              DoctorConst.imageInfoMan,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ),
    );
  }

  Positioned _positonedCircleAvatarImage(BuildContext context) {
    return Positioned(
      left: _left,
      top: _left,
      child: CircleAvatar(
        maxRadius: _maxRadius,
        backgroundColor: DoctorConst.colorBackgroundPink,
        child: CircleAvatar(
          maxRadius: _maxRadiuss,
          backgroundColor: DoctorConst.colorTransparent,
          child: ClipRRect(
            borderRadius: DoctorConst.borderRadiusCircular70,
            child: _imageAsset(context),
          ),
        ),
      ),
    );
  }

  Image _imageAsset(BuildContext context) {
    return Image.asset(
      DoctorConst.imageInfoWomen,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height / _height,
      width: MediaQuery.of(context).size.width,
    );
  }
}
