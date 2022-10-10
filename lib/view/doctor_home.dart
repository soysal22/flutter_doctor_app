import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/const/doctor_const.dart';
import 'package:flutter_doctor_app/view/doctor_detail.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DoctorHome extends StatelessWidget {
  const DoctorHome({super.key});

  final double _fontSize18 = 18;
  final double _fontSize12 = 12;
  final double _fontSize20 = 20;
  final double _fontSize25 = 25;

  final double _size = 30;
  final int _flex2 = 2;
  final int _flex8 = 8;
  final double _height = 35;
  final double _height5 = 5;
  final double _height4 = 4;
  final double _height12 = 12;
  final double _width7 = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DoctorConst.colorDark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _containerAppBarTextFieldElvatedButton(context),
            DoctorConst.sizedBoxHeight20,
            Padding(
              padding: DoctorConst.paddingHomeContainer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _containerStackTextImage(context),
                  DoctorConst.sizedBoxHeight30,
                  _rowCategoryContainerText(),
                  DoctorConst.sizedBoxHeight20,
                  _gradientTextTopRatedDcotors(),
                  DoctorConst.sizedBoxHeight20,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        containerTopRatedDoctorsCard(
                            image: DoctorConst.imageDoctorWomen,
                            title: DoctorConst.textCardTitleWomen,
                            jobName: DoctorConst.textJobWomen),
                        DoctorConst.sizedBoxWidth20,
                        containerTopRatedDoctorsCard(
                            image: DoctorConst.imageDoctorMan,
                            title: DoctorConst.textCardTitleMan,
                            jobName: DoctorConst.textJobMan),
                        DoctorConst.sizedBoxWidth20,
                        containerTopRatedDoctorsCard(
                            image: DoctorConst.imageDoctorWomen,
                            title: DoctorConst.textCardTitleWomen,
                            jobName: DoctorConst.textJobWomen),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GradientText _gradientTextTopRatedDcotors() {
    return GradientText(
      DoctorConst.textTopRatedDoctors,
      style: TextStyle(fontSize: _fontSize20, fontWeight: FontWeight.bold),
      colors: [
        DoctorConst.colorPuple,
        DoctorConst.colorRed,
        DoctorConst.colorPuple
      ],
    );
  }

  Row _rowCategoryContainerText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        columnContainerIconText(
          icon: Icons.local_hospital_rounded,
          text: DoctorConst.textDoctors,
          containerColor: DoctorConst.colorPuple,
        ),
        columnContainerIconText(
          icon: Icons.local_bar_sharp,
          text: DoctorConst.textLabs,
          containerColor: DoctorConst.colorRed,
        ),
        columnContainerIconText(
          icon: Icons.car_rental_sharp,
          text: DoctorConst.textAmbulance,
          containerColor: DoctorConst.colorCardButton,
        ),
        columnContainerIconText(
          icon: Icons.psychology_sharp,
          text: DoctorConst.textPharms,
          containerColor: DoctorConst.colorBlue,
        ),
      ],
    );
  }

  Container _containerStackTextImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / _height5,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            DoctorConst.colorPuple,
            DoctorConst.colorCardButton,
          ]),
          borderRadius: DoctorConst.borderRadiusCircular20),
      child: Stack(
        children: [
          Padding(
            padding: DoctorConst.paddingHomeContainerStack,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _textTitle(context),
                _textContext(context),
                _elevatedbuttonBold(context),
              ],
            ),
          ),
          _positionedImage(context),
        ],
      ),
    );
  }

  Text _textContext(BuildContext context) {
    return Text(DoctorConst.contextContainer,
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              color: DoctorConst.colorBlack,
              fontSize: _fontSize12,
            ));
  }

  ElevatedButton _elevatedbuttonBold(BuildContext context) {
    return ElevatedButton(
        style:
            ElevatedButton.styleFrom(backgroundColor: DoctorConst.colorPuple),
        onPressed: () {},
        child: Text(DoctorConst.learnMore,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: DoctorConst.colorBlack, fontWeight: FontWeight.w500)));
  }

  Text _textTitle(BuildContext context) {
    return Text(DoctorConst.titleContainer,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: DoctorConst.colorBlack,
              fontWeight: FontWeight.bold,
              fontSize: _fontSize18,
            ));
  }

  Positioned _positionedImage(BuildContext context) {
    final double _right = 0;
    return Positioned(
      right: _right,
      child: Image.asset(
        DoctorConst.imageContainerWomen,
        height: MediaQuery.of(context).size.height / _height5,
      ),
    );
  }

  Container _containerAppBarTextFieldElvatedButton(BuildContext context) {
    double height4 = 4;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / height4,
      decoration: BoxDecoration(
          color: DoctorConst.colorPuple,
          borderRadius: BorderRadius.only(
            bottomLeft: DoctorConst.radiusCircular40,
            bottomRight: DoctorConst.radiusCircular40,
          )),
      child: Padding(
        padding: DoctorConst.paddingHome,
        child: Column(
          children: [
            _rowAppBar(context),
            DoctorConst.sizedBoxHeight20,
            _rowTextfieldElevatedButton(),
          ],
        ),
      ),
    );
  }

  Row _rowTextfieldElevatedButton() {
    return Row(
      children: [
        Expanded(
          flex: _flex8,
          child: _textField(),
        ),
        DoctorConst.sizedBoxWidth10,
        Expanded(
          flex: _flex2,
          child: _elevatedButton(),
        )
      ],
    );
  }

  ElevatedButton _elevatedButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: DoctorConst.padding20,
            shape: RoundedRectangleBorder(
                borderRadius: DoctorConst.borderRadiusCircular15)),
        onPressed: () {},
        child: Icon(
          Icons.dashboard_outlined,
          color: DoctorConst.colorWhite,
          size: _size,
        ));
  }

  TextField _textField() {
    return TextField(
      cursorColor: (Colors.red),
      decoration: InputDecoration(
        fillColor: DoctorConst.colorDarkGrey,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: DoctorConst.borderRadiusCircular15,
        ),
        hintText: DoctorConst.textTextfield,
        hintStyle: TextStyle(color: DoctorConst.colorWhite),
        prefixIcon: Icon(
          Icons.search_rounded,
          color: DoctorConst.colorWhite,
          size: _size,
        ),
      ),
      keyboardType: TextInputType.name,
    );
  }

  Row _rowAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _rowImageTexts(context),
        _circleAvatarIcon(),
      ],
    );
  }

  CircleAvatar _circleAvatarIcon() {
    return CircleAvatar(
        maxRadius: _fontSize25,
        backgroundColor: DoctorConst.colorDarkGrey,
        child: Icon(
          Icons.notifications_none_outlined,
          color: DoctorConst.colorWhite,
        ));
  }

  Row _rowImageTexts(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: _size,
          backgroundColor: DoctorConst.colorWhite,
          child: ClipRRect(
            borderRadius: DoctorConst.borderRadiusCircular30,
            child: Image.asset(
              DoctorConst.imageIconMan,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width / _width7,
              height: MediaQuery.of(context).size.height / _height12,
            ),
          ),
        ),
        DoctorConst.sizedBoxWidth20,
        _columnAppBarTexts()
      ],
    );
  }

  Column _columnAppBarTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DoctorConst.textHi,
          style: TextStyle(
              fontSize: _fontSize18,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
              color: DoctorConst.colorWhite),
        ),
        Text(
          DoctorConst.textJonathan,
          style: TextStyle(
              fontSize: _fontSize18,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
              color: DoctorConst.colorWhite),
        ),
      ],
    );
  }
}

class containerTopRatedDoctorsCard extends StatelessWidget {
  const containerTopRatedDoctorsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.jobName,
  }) : super(key: key);

  final double _width2 = 2;
  final double _height4 = 3.5;
  final double _height8 = 8;
  final double _bottom0 = 0;
  final double _bottom20 = 20;
  final double _bottom80 = 80;
  final double _left30 = 30;
  final double _left15 = 15;
  final double _size25 = 25;
  final double _fontSize20 = 20;
  final double _fontSize18 = 18;

  final String image;
  final String title;
  final String jobName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DoctorDetail(),
        ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / _width2,
        height: MediaQuery.of(context).size.height / _height4,
        decoration: BoxDecoration(
            borderRadius: DoctorConst.borderRadiusCircular20,
            color: DoctorConst.colorWhite),
        child: Stack(children: [
          _imageAsset(context),
          _BackgroundContainer(context),
          _positionedColumnTexts(context),
          Positioned(
            bottom: _bottom80,
            left: _left30,
            child: _rowCircleAvatar(),
          ),
        ]),
      ),
    );
  }

  Positioned _positionedColumnTexts(BuildContext context) {
    return Positioned(
      bottom: _bottom20,
      left: _left15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textTitle(context),
          DoctorConst.sizedBoxHeight5,
          _textJobName(context),
        ],
      ),
    );
  }

  Image _imageAsset(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width / _width2,
      height: MediaQuery.of(context).size.height / _height4,
    );
  }

  Positioned _BackgroundContainer(BuildContext context) {
    return Positioned(
      bottom: _bottom0,
      child: Container(
        width: MediaQuery.of(context).size.width / _width2,
        height: MediaQuery.of(context).size.height / _height8,
        decoration: BoxDecoration(
            borderRadius: DoctorConst.borderRadiusCircular20,
            color: DoctorConst.colorCard),
      ),
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(title,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            color: DoctorConst.colorBlack,
            fontWeight: FontWeight.bold,
            fontSize: _fontSize20));
  }

  Text _textJobName(BuildContext context) {
    return Text(jobName,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: DoctorConst.colorRed, fontSize: _fontSize18));
  }

  Row _rowCircleAvatar() {
    return Row(
      children: [
        CircleAvatar(
            maxRadius: _size25,
            backgroundColor: DoctorConst.colorDarkGrey,
            child: Icon(
              Icons.videocam_outlined,
              color: DoctorConst.colorWhite,
              size: _left30,
            )),
        DoctorConst.sizedBoxWidth30,
        CircleAvatar(
            maxRadius: _size25,
            backgroundColor: DoctorConst.colorDarkGrey,
            child: Icon(
              Icons.message,
              color: DoctorConst.colorRed,
              size: _size25,
            ))
      ],
    );
  }
}

class columnContainerIconText extends StatelessWidget {
  const columnContainerIconText({
    Key? key,
    required this.text,
    required this.icon,
    required this.containerColor,
  }) : super(key: key);

  final double _size = 40;
  final double _width = 6;
  final double _height = 13;

  final String text;
  final IconData icon;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / _width,
          height: MediaQuery.of(context).size.height / _height,
          decoration: BoxDecoration(
              color: containerColor,
              borderRadius: DoctorConst.borderRadiusCircular10),
          child: Icon(
            icon,
            color: DoctorConst.colorWhite,
            size: _size,
          ),
        ),
        DoctorConst.sizedBoxHeight10,
        Text(text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: DoctorConst.colorWhite, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
