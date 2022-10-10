import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/const/doctor_const.dart';

class CardAppointment extends StatelessWidget {
  const CardAppointment(
      {super.key,
      required this.image,
      required this.title,
      required this.jobName});

  final String image;
  final String title;
  final String jobName;

  final double _heightContainerCard = 3.7;
  final double _heightt = 12;
  final double _containerHeight = 13;
  final double _containerWidth = 6;
  final double _size = 30;
  final double _iconSize = 15;
  final double _fontSize14 = 14;
  final double _fontSize15 = 15;
  final double _fontSize16 = 16;
  final double _fontSize17 = 17;
  final double _fontSize18 = 18;
  final double _fontSize20 = 18;
  final double _top = 10;
  final double _top25 = 25;
  final double _left = 8;
  final double _width3 = 3;
  final double _width = 2.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / _heightContainerCard,
      decoration: BoxDecoration(
          color: DoctorConst.colorDarkGrey,
          borderRadius: DoctorConst.borderRadiusCircular20),
      child: Padding(
        padding: DoctorConst.padding12,
        child: Container(
          decoration: BoxDecoration(
              color: DoctorConst.colorDarkGrey,
              borderRadius: DoctorConst.borderRadiusCircular20),
          child: Padding(
            padding:DoctorConst.paddingCardApointment,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _cliprRectImage(context),
                    DoctorConst.sizedBoxWidth20,
                    _columnTexts(_fontSize15),
                  ],
                ),
                DoctorConst.sizedBoxHeight15,
                _rowIconTexts(_fontSize14, _containerWidth, _fontSize18,
                    _fontSize17, _fontSize15),
                DoctorConst.sizedBoxHeight15,
                _rowButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _columnTexts(_fontSize15) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _textTitle(),
        DoctorConst.sizedBoxHeight5,
        _textJob(_fontSize15),
        DoctorConst.sizedBoxHeight5,
        _rowIconStarText(_iconSize),
      ],
    );
  }

  ClipRRect _cliprRectImage(BuildContext context) {
    return ClipRRect(
      borderRadius: DoctorConst.borderRadiusCircular10,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width / _containerWidth,
        height: MediaQuery.of(context).size.height / _containerHeight,
      ),
    );
  }

  Row _rowButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        cardButton(
          bacgroundColor: DoctorConst.colorCardButton,
          width: _width3,
          text: DoctorConst.textCancel,
          color: DoctorConst.colorRed,
        ),
        cardButton(
            bacgroundColor: DoctorConst.colorPuple,
            text: DoctorConst.textReschedule,
            color: DoctorConst.colorWhite,
            width: _width)
      ],
    );
  }

  Text _textJob(_fontSize15) {
    return Text(
      jobName,
      style: TextStyle(
        color: DoctorConst.colorRed,
        decoration: TextDecoration.none,
        fontSize: _fontSize15,
      ),
    );
  }

  Text _textTitle() {
    return Text(
      title,
      style: TextStyle(
        color: DoctorConst.colorWhite,
        decoration: TextDecoration.none,
        fontSize: _fontSize20,
      ),
    );
  }
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

Row _rowIconTexts(
    _fontSize14, _containerWidth, _fontSize18, _fontSize17, _fontSize15) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          _iconDate(_fontSize18),
          DoctorConst.sizedBoxWidth5,
          _textDate(_fontSize14),
        ],
      ),
      Row(
        children: [
          _iconTime(_fontSize15),
          DoctorConst.sizedBoxWidth5,
          _textTime(_fontSize15),
        ],
      ),
      Row(
        children: [
          _circleAvatarRadius(_containerWidth),
          DoctorConst.sizedBoxWidth10,
          _textConfirmed(_fontSize15),
        ],
      ),
    ],
  );
}

Text _textDate(double _fontSize14) {
  return Text(
    DoctorConst.textDateCard,
    style: TextStyle(
      color: DoctorConst.colorPuple,
      decoration: TextDecoration.none,
      fontSize: _fontSize14,
      fontWeight: FontWeight.normal,
    ),
  );
}

Text _textConfirmed(double _fontSize15) {
  return Text(
    DoctorConst.textConfirmed,
    style: TextStyle(
      color: DoctorConst.colorPuple,
      decoration: TextDecoration.none,
      fontSize: _fontSize15,
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
      fontSize: 15,
      fontWeight: FontWeight.normal,
    ),
  );
}

CircleAvatar _circleAvatarRadius(_containerWidth) {
  return CircleAvatar(
    maxRadius: _containerWidth,
    backgroundColor: DoctorConst.colorLightGreen,
  );
}

Icon _iconTime(_fontSize15) {
  return Icon(
    Icons.access_time_rounded,
    color: DoctorConst.colorRed,
    size: _fontSize15,
  );
}

Icon _iconDate(_fontSize15) {
  return Icon(
    Icons.date_range_outlined,
    color: DoctorConst.colorPuple,
    size: _fontSize15,
  );
}
