import 'package:flutter/material.dart';

/// program içinde sabit Resimler Textler burada barınır.

class DoctorConst {
  //image
  static const String imageInfoMan = "assets/images/info/old_doctor.jpg";
  static const String imageInfoWomen = "assets/images/info/women_doctor.jpg";

  // Detail Image
  static const String imageDetailMan = "assets/images/detail/doctorWomen.png";

  // Home image
  static const String imageIconMan = "assets/images/home/iconMan.png";
  static const String imageContainerWomen =
      "assets/images/home/containerDoctor.png";
  static const String imageDoctorMan = "assets/images/home/doctorMan.png";
  static const String imageDoctorWomen = "assets/images/home/doctorWomen.png";

  //text

  static const String stop = 'sayfada hata var';
  static const String textEmpty = 'EMPTY';
  static const String infoTitle = 'Find a doctor near you';
  static const String infoContext =
      'Lorem ipsum dolor sit amet consectetur\n adipiscing elit.Pretium eget laoreet tortor,ut\n id sagittis ';


  static const String signIn = 'Sign In';
  static const String signUp = 'Sign Up';
  static const String textRegister = 'Register eithe us!';
  static const String textYourInformation = 'Your Information is safe with us';
  static const String textField = ' Enter Your full name';
  static const String textFieldEmail = ' Enter Your email';
  static const String textFieldPassword = ' Enter Your password';
  static const String textFieldConfirmPassword = ' Confirm Your password';
  static const String textAlready = 'Already have an account?';

// Text Home
  static const String textHi = 'Hi';
  static const String textJonathan = 'Jonathan Tawly';
  static const String textTextfield = ' Search';
  static const String titleContainer = ' Healty or expensive ';
  static const String contextContainer =
      ' early protection for family \n & friends health ';
  static const String learnMore = ' Learn more ';
  static const String textDoctors = 'Doctors';
  static const String textLabs = 'Labs';
  static const String textAmbulance = 'Ambulance';
  static const String textPharms = 'Pharm\'s';
  static const String textTopRatedDoctors = 'Top Rated Doctors';

// Text Appointment

  static const String textAppointment = 'Appointment';

  static const String textSixteen = '16';
  static const String textTuesday = 'Tuesday';
  static const String textDate = 'May, 2022';
  static const String textUpcoming = 'Upcoming';

  static const String textCardTitleWomen = 'Dr. Seamle John';
  static const String textJobWomen = 'Pediatrician';
  static const String textFourNine = '4.9';
  static const String textDateCard = '16, May 2022';
  static const String textTime = '09:00AM';
  static const String textConfirmed = 'Confirmed';

  static const String textCardTitleMan = 'Dr.Jerems Steve';
  static const String textJobMan = 'Cardiologist';
  static const String textCancel = 'Cancel';
  static const String textReschedule = 'Reschedule';

  //Text Detail
  static const String title = 'Doctor Details';
  static const String aboutDoctor = 'About Doctor';
  static const String seeReviews = 'See Reviews';
  static const String workingHour = 'Working Hours';
  static const String workingDate = 'Mon - Fri, 09.00 AM - 20.00 PM ';
  static const String makeAppointment = 'Make Appointment';
  static const String doctorContext =
      'Dr. Jenny Wilson is the top most Cardiologist \nspecialist in Nanyang Hospital at Londın. She \nachived several awards for her wonderful \ncontribution in medicial field. She is available for \nprivate consultation  ';
  static const String bookAppointment = 'Book Appointment';
  static const String patientis = 'Patients';
  static const String experience = 'Experience';
  static const String rating = 'Rating';
  static const String text1k = '1k+';
  static const String year5 = '5 Years+';

  // Padding

  static const padding12 = EdgeInsets.all(12);
  static const padding20 = EdgeInsets.all(20);

  static const paddingAppointment =
      EdgeInsets.only(top: 50, left: 20, right: 20);

  static const paddingHome =
      EdgeInsets.only(top: 60, right: 25, left: 25, bottom: 15);

  static const paddingHomeContainer = EdgeInsets.only(left: 25, right: 25);

  static const paddingHomeContainerStack =
      EdgeInsets.only(left: 15, top: 25, bottom: 25);

  static const paddingDetail = EdgeInsets.only(left: 25, right: 25, top: 15);

  static const paddingCardApointment =
      EdgeInsets.only(top: 25, left: 8, right: 8);

    static const paddinglogIn =   const EdgeInsets.only(left: 20,right: 20);

  // Circular

  static Radius radiusCircular10 = const Radius.circular(10);
  static Radius radiusCircular20 = const Radius.circular(20);
  static Radius radiusCircular40 = const Radius.circular(40);
  static Radius radiusElipitical = const Radius.elliptical(250, 150);

  static BorderRadius borderRadiusCircular10 = BorderRadius.circular(10);
  static BorderRadius borderRadiusCircular15 = BorderRadius.circular(15);
  static BorderRadius borderRadiusCircular20 = BorderRadius.circular(20);
  static BorderRadius borderRadiusCircular30 = BorderRadius.circular(30);
  static BorderRadius borderRadiusCircular40 = BorderRadius.circular(40);
  static BorderRadius borderRadiusCircular70 = BorderRadius.circular(70);

  // color
  static Color? colorCard = Color.fromARGB(95, 192, 190, 190);
  static const Color colorWhite = Colors.white;
  static const Color colorRed = Colors.red;
  static const Color colorGrey = Colors.grey;
  static Color? colorDark = Colors.grey[900];
  static const Color colorCardButton = Color.fromARGB(255, 243, 158, 152);
  static const Color colorDarkGrey = Color.fromARGB(173, 87, 86, 86);
  static const Color colorBlack = Colors.black;
  static const Color colorBlue = Color.fromARGB(255, 156, 203, 242);
  static const Color colorYellow = Colors.yellow;
  static const Color colorLightGreen = Color.fromARGB(253, 64, 233, 191);
  static const Color colorTransparent = Colors.transparent;
  static Color colorPuple = Color.fromARGB(255, 111, 83, 196);
  static Color? colorBackgroundPink = Color.fromARGB(255, 245, 164, 246);
  static Color? colorBackgroundd = Color.fromARGB(255, 140, 225, 253);

  // Sizedbox
  static const SizedBox sizedBoxHeight5 = SizedBox(
    height: 5,
  );
  static const SizedBox sizedBoxHeight10 = SizedBox(
    height: 10,
  );
  static const SizedBox sizedBoxHeight15 = SizedBox(
    height: 15,
  );
  static const SizedBox sizedBoxHeight20 = SizedBox(
    height: 20,
  );
  static const SizedBox sizedBoxHeight30 = SizedBox(
    height: 30,
  );
  static const SizedBox sizedBoxHeight50 = SizedBox(
    height: 50,
  );

  static const SizedBox sizedBoxWidth5 = SizedBox(
    width: 5,
  );
  static const SizedBox sizedBoxWidth10 = SizedBox(
    width: 10,
  );

  static const SizedBox sizedBoxWidth20 = SizedBox(
    width: 20,
  );
  static const SizedBox sizedBoxWidth30 = SizedBox(
    width: 30,
  );
  static const SizedBox sizedBoxWidth50 = SizedBox(
    width: 50,
  );
}
