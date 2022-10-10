import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/const/doctor_const.dart';
import 'package:flutter_doctor_app/widget/card_appointment.dart';

class DoctorAppointment extends StatelessWidget {
  const DoctorAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    double _size = 30;
    double _iconSize = 15;
    double _fontSize15 = 15;
    double _fontSize16 = 16;
    double _fontSize17 = 17;
    double _fontSize18 = 18;
    double _fontSize20 = 20;
    double _top = 10;
    double _top25 = 25;
    double _left = 5;
    double _width3 = 3;
    double _width = 2.5;
    double _heightContainerCard = 3.7;
    double _heightt = 12;
    double _containerHeight = 13;
    double _containerWidth = 6;
    double _textSixteenSize = 45;
    double _containerIconSize = 35;

    return Padding(
      padding: DoctorConst.paddingAppointment,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _rowAppBar(_size, context),
          DoctorConst.sizedBoxHeight30,
          _rowDateIcon(context, _textSixteenSize, _fontSize20, _size,
              _fontSize16, _fontSize15, _containerIconSize),
          DoctorConst.sizedBoxHeight30,
          CardAppointment(
            image: DoctorConst.imageInfoWomen,
            title: DoctorConst.textCardTitleWomen,
            jobName: DoctorConst.textJobWomen,
          ),
          DoctorConst.sizedBoxHeight15,
          CardAppointment(
            image: DoctorConst.imageInfoMan,
            title: DoctorConst.textCardTitleMan,
            jobName: DoctorConst.textJobMan,
          ),
        ],
      ),
    );
  }

  Row _rowIconTexts(double _fontSize17, double _containerWidth, _fontSize15) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _iconDate(),
        _textDate(_fontSize17),
        _iconTime(),
        _textTime(_fontSize15),
        _circleAvatarRadius(_containerWidth),
        _textConfirmed(_fontSize17),
      ],
    );
  }

  Text _textDate(double _fontSize16) {
    return Text(
      DoctorConst.textDateCard,
      style: TextStyle(
        color: DoctorConst.colorPuple,
        decoration: TextDecoration.none,
        fontSize: _fontSize16,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Text _textConfirmed(double _fontSize16) {
    return Text(
      DoctorConst.textConfirmed,
      style: TextStyle(
        color: DoctorConst.colorPuple,
        decoration: TextDecoration.none,
        fontSize: _fontSize16,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Text _textTime(double _fontSize15) {
    return Text(
      DoctorConst.textTime,
      style: TextStyle(
        color: DoctorConst.colorRed,
        decoration: TextDecoration.none,
        fontSize: _fontSize15,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  CircleAvatar _circleAvatarRadius(double _containerWidth) {
    return CircleAvatar(
      maxRadius: _containerWidth,
      backgroundColor: DoctorConst.colorLightGreen,
    );
  }

  Icon _iconTime() {
    double iconSize20 = 20;
    return Icon(
      Icons.access_time_rounded,
      color: DoctorConst.colorRed,
      size: iconSize20,
    );
  }

  Icon _iconDate() {
    double iconSize18 = 18;
    return Icon(
      Icons.date_range_outlined,
      color: DoctorConst.colorPuple,
      size: iconSize18,
    );
  }

  Row _rowImage(
      BuildContext context,
      double _containerWidth,
      double _containerHeight,
      double _fontSize20,
      double _fontSize18,
      double _iconSize) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cliprrectImageAsset(context, _containerWidth, _containerHeight),
        DoctorConst.sizedBoxWidth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(_fontSize20),
            _textJobName(_fontSize18),
            DoctorConst.sizedBoxHeight10,
            _rowIconStarText(_iconSize),
          ],
        ),
      ],
    );
  }

  Text _textJobName(double _fontSize18) {
    return Text(
      DoctorConst.textJobWomen,
      style: TextStyle(
        color: DoctorConst.colorRed,
        decoration: TextDecoration.none,
        fontSize: _fontSize18,
      ),
    );
  }

  Text _title(double _fontSize20) {
    return Text(
      DoctorConst.textCardTitleWomen,
      style: TextStyle(
        color: DoctorConst.colorWhite,
        decoration: TextDecoration.none,
        fontSize: _fontSize20,
      ),
    );
  }

  Row _rowIconStarText(double _iconSize) {
    return Row(
      children: [
        _iconstar(_iconSize),
        _iconstar(_iconSize),
        _iconstar(_iconSize),
        _iconstar(_iconSize),
        _iconstar(_iconSize),
        DoctorConst.sizedBoxWidth10,
        Text(
          DoctorConst.textFourNine,
          style: TextStyle(
            color: DoctorConst.colorWhite,
            decoration: TextDecoration.none,
            fontSize: _iconSize,
          ),
        ),
      ],
    );
  }

  Icon _iconstar(double _iconSize) {
    return Icon(
      Icons.star,
      color: DoctorConst.colorYellow,
      size: _iconSize,
    );
  }

  ClipRRect _cliprrectImageAsset(
      BuildContext context, double _containerWidth, double _containerHeight) {
    return ClipRRect(
      borderRadius: DoctorConst.borderRadiusCircular10,
      child: Image.asset(
        DoctorConst.imageInfoWomen,
        fit: BoxFit.cover,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width / _containerWidth,
        height: MediaQuery.of(context).size.height / _containerHeight,
      ),
    );
  }

  Row _rowDateIcon(BuildContext context, _textSixteenSize, _fontSize20, _size,
      _fontSize16, _fontSize15, _containerIconSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _containerIcon(context, _containerIconSize),
            DoctorConst.sizedBoxWidth10,
            _textSixteen(_textSixteenSize),
            DoctorConst.sizedBoxWidth10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DoctorConst.textTuesday,
                  style: TextStyle(
                    color: DoctorConst.colorWhite,
                    decoration: TextDecoration.none,
                    fontSize: _fontSize16,
                  ),
                ),
                Text(
                  DoctorConst.textDate,
                  style: TextStyle(
                    color: DoctorConst.colorWhite,
                    decoration: TextDecoration.none,
                    fontSize: _fontSize16,
                  ),
                )
              ],
            ),
          ],
        ),
        _rowUpcomingIcon(_fontSize20, _size),
      ],
    );
  }

  Row _rowUpcomingIcon(double _fontSize20, double _size) {
    return Row(
      children: [
        Text(
          DoctorConst.textUpcoming,
          style: TextStyle(
              color: DoctorConst.colorPuple,
              decoration: TextDecoration.none,
              fontSize: _fontSize20,
              fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.keyboard_arrow_down_outlined,
          color: DoctorConst.colorPuple,
          size: _size,
        )
      ],
    );
  }

  Text _textSixteen(double _textSixteenSize) {
    return Text(
      DoctorConst.textSixteen,
      style: TextStyle(
          color: DoctorConst.colorWhite,
          decoration: TextDecoration.none,
          fontSize: _textSixteenSize,
          fontWeight: FontWeight.bold),
    );
  }

  Container _containerIcon(BuildContext context, _containerIconSize) {
    double witdh8 = 8;
    double witdh3 = 3;
    double height18 = 18;
    return Container(
      width: MediaQuery.of(context).size.width / witdh8,
      height: MediaQuery.of(context).size.height / height18,
      decoration: BoxDecoration(
          borderRadius: DoctorConst.borderRadiusCircular10,
          border: Border.all(color: DoctorConst.colorBlue, width: witdh3)),
      child: Icon(
        Icons.date_range_outlined,
        color: DoctorConst.colorRed,
        size: _containerIconSize,
      ),
    );
  }

  Row _rowAppBar(double _size, BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back,
          color: DoctorConst.colorPuple,
          size: _size,
        ),
        DoctorConst.sizedBoxWidth50,
        Text(DoctorConst.textAppointment,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: DoctorConst.colorPuple, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class cardButton extends StatelessWidget {
  const cardButton({
    Key? key,
    required this.text,
    required this.color,
    required this.width,
    required this.bacgroundColor,
  }) : super(key: key);

  final double width;
  final double _height = 20;

  final String text;
  final Color color;
  final Color bacgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / width,
        height: MediaQuery.of(context).size.height / _height,
        child: Card(
          color: bacgroundColor,
          child: Center(
            child: Text(text,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: color,
                    )),
          ),
        ));
  }
}
