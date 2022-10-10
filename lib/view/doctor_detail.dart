import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/const/doctor_const.dart';
import 'package:flutter_doctor_app/view/doctor_bottom_bar.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  final double _fontSize22 = 22;

  final double _fontSize20 = 20;

  final double _fontSize16 = 16;

  final double _fontSize14 = 14;

  final double _iconSize = 30;

  final double _width = 4;

  final double _width300 = 300;

  final double _height9 = 9;

  final double _height7 = 7;

  final double _height18 = 18;

  final double _height112 = 1.2;

  final double _height12 = 12;

  final double _bottom = 2;

  final double _left = 15;

  final List<Tab> _tabBarList = [
    Tab(
      
       child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Mon'),
            Text('12'),
          ],),
    ),
    Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Tue'),
          Text('13'),
        ],
      ),
    ),
    Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Wed'),
          Text('14'),
        ],
      ),
    ),
    Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Thu'),
          Text('15'),
        ],
      ),
    ),
    Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Fri'),
          Text('16'),
        ],
      ),
    ),
    Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Sat'),
          Text('17'),
        ],
      ),
    ),
    Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Sun'),
          Text('18'),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabBarList.length, vsync: this);
  }

  int _counter = 0;
  double _indicatorWeight = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBarList.length,
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: DoctorConst.colorDark,
          child: Column(
            children: [
              _paddingAppBar(),
              DoctorConst.sizedBoxHeight30,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: DoctorConst.colorDarkGrey,
                      borderRadius: BorderRadius.only(
                          topLeft: DoctorConst.radiusCircular40,
                          topRight: DoctorConst.radiusCircular40)),
                  child: Padding(
                    padding: DoctorConst.paddingDetail,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _rowImageTextsIcons(context),
                        DoctorConst.sizedBoxHeight20,
                        _containerCard(context),
                        DoctorConst.sizedBoxHeight20,
                        _rowTextAboutSee(),
                        DoctorConst.sizedBoxHeight15,
                        _textDetailContext(),
                        DoctorConst.sizedBoxHeight30,
                        _rowIconWorking(),
                        DoctorConst.sizedBoxHeight15,
                        _textWorkingDate(),
                        DoctorConst.sizedBoxHeight30,
                        _textMakeAppointment(),
                        DoctorConst.sizedBoxHeight20,
                        TabBar(
                          tabs: _tabBarList,
                          indicatorWeight: 0,
                          indicatorSize: TabBarIndicatorSize.tab,
                          isScrollable: true,
                          unselectedLabelColor: DoctorConst.colorWhite,
                          controller: _tabController,
                          labelColor: DoctorConst.colorPuple,
                          indicator: BoxDecoration(
                              borderRadius: DoctorConst.borderRadiusCircular10,
                              border: Border.all(color: DoctorConst.colorRed),
                              color: DoctorConst.colorBlue),
                              
                        ),
                        DoctorConst.sizedBoxHeight20,
                        _containerBookAppointmentButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _containerCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / _height7,
      decoration: BoxDecoration(
        color: DoctorConst.colorDarkGrey,
        borderRadius: DoctorConst.borderRadiusCircular20,
        border: Border.all(
          color: DoctorConst.colorRed,
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 15, left: 25, right: 25),
        child: _rowCardBody(context),
      ),
    );
  }

  Row _rowCardBody(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        columnIconTexts(
          icon: Icons.person,
          iconColor: DoctorConst.colorPuple,
          title: DoctorConst.patientis,
          contextText: DoctorConst.text1k,
          contextTextColor: DoctorConst.colorPuple,
        ),
        _containerSolidLine(context),
        columnIconTexts(
          icon: Icons.person,
          iconColor: DoctorConst.colorPuple,
          title: DoctorConst.experience,
          contextText: DoctorConst.year5,
          contextTextColor: DoctorConst.colorPuple,
        ),
        _containerSolidLine(context),
        columnIconTexts(
          icon: Icons.message,
          iconColor: DoctorConst.colorYellow,
          title: DoctorConst.rating,
          contextText: DoctorConst.textFourNine,
          contextTextColor: DoctorConst.colorYellow,
        ),
      ],
    );
  }

  Container _containerSolidLine(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / _width300,
      height: MediaQuery.of(context).size.height / _height18,
      color: DoctorConst.colorWhite,
    );
  }

  Container _containerBookAppointmentButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / _height18,
      decoration: BoxDecoration(
          borderRadius: DoctorConst.borderRadiusCircular40,
          gradient: LinearGradient(
              begin: Alignment.topRight,
              colors: [DoctorConst.colorPuple,DoctorConst.colorPuple,DoctorConst.colorPuple, DoctorConst.colorCardButton])),
      child: _rowIconText(),
    );
  }

  Row _rowIconText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.bookmark_border_rounded,
          color: DoctorConst.colorBlack,
          size: _iconSize,
        ),
        DoctorConst.sizedBoxWidth10,
        Text(DoctorConst.bookAppointment,
            style: TextStyle(
              fontSize: _fontSize20,
              color: DoctorConst.colorBlack,
              decoration: TextDecoration.none,
            ))
      ],
    );
  }

  Text _textDetailContext() {
    return Text(
      DoctorConst.doctorContext,
      style: TextStyle(
          fontSize: _left,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
          color: DoctorConst.colorWhite),
    );
  }

  Text _textMakeAppointment() {
    return Text(
      DoctorConst.makeAppointment,
      style: TextStyle(
          fontSize: _fontSize16,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
          color: DoctorConst.colorWhite),
    );
  }

  Text _textWorkingDate() {
    return Text(
      DoctorConst.workingDate,
      style: TextStyle(
          fontSize: _fontSize14,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
          color: DoctorConst.colorWhite),
    );
  }

  Row _rowIconWorking() {
    return Row(
      children: [
        Icon(
          Icons.access_time_outlined,
          color: DoctorConst.colorPuple,
        ),
        DoctorConst.sizedBoxWidth10,
        Text(
          DoctorConst.workingHour,
          style: TextStyle(
              fontSize: _fontSize16,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
              color: DoctorConst.colorWhite),
        ),
      ],
    );
  }

  Row _rowTextAboutSee() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DoctorConst.aboutDoctor,
          style: TextStyle(
              fontSize: _fontSize22,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
              color: DoctorConst.colorWhite),
        ),
        Text(
          DoctorConst.seeReviews,
          style: TextStyle(
              fontSize: _fontSize16,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
              color: DoctorConst.colorRed),
        )
      ],
    );
  }

  Row _rowImageTextsIcons(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _containerImage(context),
        DoctorConst.sizedBoxWidth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titleDoctorName(),
            _textJobname(),
            DoctorConst.sizedBoxHeight10,
            _rowCircleAvatar()
          ],
        )
      ],
    );
  }

  Container _containerImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / _width,
      height: MediaQuery.of(context).size.height / _height9,
      decoration: BoxDecoration(
        color: DoctorConst.colorWhite,
        borderRadius: DoctorConst.borderRadiusCircular40,
      ),
      child: _stackImage(context),
    );
  }

  Stack _stackImage(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: _bottom,
          left: _left,
          child: Center(
            child: ClipRRect(
              borderRadius: DoctorConst.borderRadiusCircular20,
              child: Image.asset(
                DoctorConst.imageDetailMan,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / _height12,
              ),
            ),
          ),
        )
      ],
    );
  }

  Text _textJobname() {
    return Text(
      DoctorConst.textJobWomen,
      style: TextStyle(
          color: DoctorConst.colorRed,
          decoration: TextDecoration.none,
          fontSize: _fontSize16,
          fontWeight: FontWeight.normal),
    );
  }

  Text _titleDoctorName() {
    return Text(
      DoctorConst.textCardTitleWomen,
      style: TextStyle(
          color: DoctorConst.colorWhite,
          decoration: TextDecoration.none,
          fontSize: _fontSize22,
          fontWeight: FontWeight.w500),
    );
  }

  Row _rowCircleAvatar() {
    return Row(
      children: [
        circleAvatarIcon(
          icon: Icons.call,
          color: DoctorConst.colorPuple,
        ),
        DoctorConst.sizedBoxWidth20,
        circleAvatarIcon(
          icon: Icons.videocam_outlined,
          color: DoctorConst.colorRed,
        ),
        DoctorConst.sizedBoxWidth20,
        circleAvatarIcon(
          icon: Icons.message,
          color: DoctorConst.colorBlue,
        ),
      ],
    );
  }

  Padding _paddingAppBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => DoctorBottomBar(),
              ));
            },
            child: Icon(
              Icons.arrow_back,
              color: DoctorConst.colorPuple,
              size: 30,
            ),
          ),
          _appBarTitle(),
          _iconList(),
        ],
      ),
    );
  }

  Icon _iconList() {
    return Icon(
      Icons.more_vert_outlined,
      color: DoctorConst.colorPuple,
      size: 30,
    );
  }

  Text _appBarTitle() {
    return Text(
      DoctorConst.title,
      style: TextStyle(
          color: DoctorConst.colorPuple,
          decoration: TextDecoration.none,
          fontSize: 22),
    );
  }
}

class columnIconTexts extends StatelessWidget {
  columnIconTexts({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.contextText,
    required this.contextTextColor,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final String title;
  final String contextText;
  final Color contextTextColor;
  final double _fontSize16 = 16;
  final double _fontSize14 = 14;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        circleAvatarIcon(icon: icon, color: iconColor),
        Text(title,
            style: TextStyle(
              fontSize: _fontSize14,
              color: DoctorConst.colorWhite,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,
            )),
        Text(contextText,
            style: TextStyle(
              fontSize: _fontSize16,
              color: contextTextColor,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}

class circleAvatarIcon extends StatelessWidget {
  const circleAvatarIcon({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final double _size = 19;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: _size,
      backgroundColor: DoctorConst.colorDarkGrey,
      child: Center(
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
