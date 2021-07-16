import 'package:eilajl/constants.dart';
import 'package:eilajl/widgets/widgets.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/HaveAccountCheck.dart';
import 'components/Rounded_Button.dart';
import 'components/Rounded_Input_Fieid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Accounts(),
    );
  }
}

class Accounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: 500.0,
            height: 509.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34.0),
              gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 1.0),
                colors: [const Color(0xff626cfe), const Color(0xff9940f1)],
                stops: [0.0, 1.0],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Text(
                "علاجي",
                style: TextStyle(fontSize: 80, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 288.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff3f4079)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0d000000),
                  offset: Offset(0, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xff3f4079),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 288.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff3082cc)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0d000000),
                  offset: Offset(0, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'إنشاء حساب',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xff3082cc),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 288.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xffececec)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0d000000),
                  offset: Offset(0, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ليس الان',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xffff6b6b),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _country = 'USA';
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: sw,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: kPrimaryColor,
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 70.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'EILAJl',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CountryDropdown(
                                countries: [
                                  'CN',
                                  'FR',
                                  'IN',
                                  'IT',
                                  'UK',
                                  'USA'
                                ],
                                country: _country,
                                onChanged: (val) =>
                                    setState(() => _country = val),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 150, left: 20),
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: Colors.white38,
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 11),
                                blurRadius: 35,
                              ),
                            ],
                            image: DecorationImage(
                                image: AssetImage('assets/Doctor.png'),
                                fit: BoxFit.contain)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 70),
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 11),
                                blurRadius: 35,
                              ),
                            ],
                            image: DecorationImage(
                                image: AssetImage('assets/cn_flag.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 80),
                      child: Container(
                        width: 75.0,
                        height: 75.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 11),
                                blurRadius: 35,
                              ),
                            ],
                            image: DecorationImage(
                                image: AssetImage('assets/usa_flag.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 90),
                    child: Text.rich(TextSpan(
                        text: 'Doctor\n',
                        style: TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                              text: "Search doctor\naround you",
                              style: TextStyle(fontSize: 15))
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 50),
                    child: Text.rich(TextSpan(
                        text: 'DonorBank\n',
                        style: TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                              text: "Order Medicine\nto home",
                              style: TextStyle(fontSize: 15))
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 60),
                    child: Text.rich(TextSpan(
                        text: 'Facility\n',
                        style: TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                              text: "Search facility \naround you",
                              style: TextStyle(fontSize: 15))
                        ])),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    height: 120,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [kPrimaryColor, kPrimaryColor],
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset('assets/own_test.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Do your own test!',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 40),
                            Text(
                              'Follow the instructions\nto do your own test.',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    height: 120,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [kPrimaryColor, kPrimaryColor],
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset('assets/own_test.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Do your own test!',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 40),
                            Text(
                              'Follow the instructions\nto do your own test.',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Doctors nearby you',
                  style: TextStyle(fontSize: 20),
                ),
                Text('See All', style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 124.6,
                          height: 150.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: kPrimaryColor,
                          ),
                          // Adobe XD layer: '44' (shape)
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 124.6,
                          height: 150.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: kPrimaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 124.6,
                          height: 150.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: kPrimaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 124.6,
                          height: 150.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

// ignore: must_be_immutable
class PersonalInformation extends StatelessWidget {
  String g1 = "";
  @override
  Widget build(BuildContext context) {
    // double w1 =MediaQuery.of(context).size.width;
    double w1 = 500;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Positioned(
          right: -5,
          top: -200.0,
          child: Container(
            child: CustomPaint(
              size: Size(
                  w1,
                  (w1 * 0.8376623376623377)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainterM(),
            ),
          ),
        ),
        Positioned(
          left: 250,
          bottom: -300.0,
          child: Container(
              child: CustomPaint(
            size: Size(
                w1,
                (w1 * 0.8376623376623377)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          )),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'SingUp',
                style: TextStyle(
                  fontFamily: 'Simple Jut Out',
                  fontSize: 61,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 500,
              ),
              HaveAccountCheck(),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Personal Information',
                style: TextStyle(
                  fontFamily: 'Simple Jut Out',
                  fontSize: 30,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 300,
              ),
              HaveAccountCheck(),
            ],
          ),
        ),
        Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 270,
                ),
                RoundedInputFieid(
                  hintext: "FirstName ",
                  onch: (value) {},
                  icon: Icons.person,
                ),
                RoundedInputFieid(
                  hintext: "LastName",
                  onch: (value) {},
                  icon: Icons.person,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 'g1',
                          groupValue: g1,
                        ),
                        Text('Male')
                      ],
                    ),
                    Row(
                      children: <Widget>[Radio(), Text('Fmale')],
                    ),
                    Row(
                      children: <Widget>[Radio(), Text('else')],
                    )
                  ],
                ),
                RoundedInputFieid(
                  hintext: "PhoneNumber",
                  onch: (value) {},
                  icon: Icons.person,
                ),
                RoundedInputFieid(
                  hintext: "Location",
                  onch: (value) {},
                  icon: Icons.person,
                ),
                RoundedInputFieid(
                  hintext: "BirthDate",
                  onch: (value) {},
                  icon: Icons.person,
                ),
                RoundedButton(
                  text: 'Next',
                  icon: Icons.arrow_forward,
                ),
                HaveAccountCheck(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

// ignore: must_be_immutable
class AccountInformation extends StatelessWidget {
  String g1 = "";
  @override
  Widget build(BuildContext context) {
    // double w1 =MediaQuery.of(context).size.width;
    double w1 = 500;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Positioned(
          right: -5,
          top: -200.0,
          child: Container(
            child: CustomPaint(
              size: Size(
                  w1,
                  (w1 * 0.8376623376623377)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainterM(),
            ),
          ),
        ),
        Positioned(
          left: 250,
          bottom: -300.0,
          child: Container(
              child: CustomPaint(
            size: Size(
                w1,
                (w1 * 0.8376623376623377)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          )),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'SingUp',
                style: TextStyle(
                  fontSize: 61,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 500,
              ),
              HaveAccountCheck(),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Account Information',
                style: TextStyle(
                  fontFamily: 'Simple Jut Out',
                  fontSize: 30,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 300,
              ),
              HaveAccountCheck(),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
              ),
              RoundedInputFieid(
                hintext: "UserName",
                onch: (value) {},
                icon: Icons.person,
              ),
              RoundedInputFieid(
                hintext: "Password ",
                onch: (value) {},
                icon: Icons.person,
              ),
              RoundedInputFieid(
                hintext: "ConfermPassword  ",
                onch: (value) {},
                icon: Icons.person,
              ),
              RoundedInputFieid(
                hintext: "EmailAdderss",
                onch: (value) {},
                icon: Icons.person,
              ),
              RoundedInputFieid(
                hintext: "Location",
                onch: (value) {},
                icon: Icons.person,
              ),
              RoundedButton(
                text: 'Create',
                icon: Icons.check,
              ),
              HaveAccountCheck(),
            ],
          ),
        ),
      ]),
    );
  }
}

class SearchFacility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 500.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: kPrimaryColor,
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 140, horizontal: 10),
                      child: Text(
                        'Search for Facility',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                )
              ],
            ),
          ]),
    );
  }
}

/*class Userprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Center(
                child: Container(
                  width: 300.0,
                  height: 400.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kPrimaryColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}*/

class g extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: 500.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: kPrimaryColor,
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'BoldBank',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 180),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Declare_Card(),
                      Declare_Card(),
                      Declare_Card(),
                      Declare_Card(),
                      Declare_Card(),
                      Declare_Card(),
                      Declare_Card(),
                      Declare_Card()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Declare_Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Name = 'Osama Ali';
    var Location = "mukalla";
    var Age = 25;
    var BloodType = 'A+';
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 175,
      child: Card(
        color: Colors.white,
        shadowColor: Colors.green,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Divider(),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text("Name :$Name"),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("Age:$Age\nLocation : $Location"),
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: FDottedLine(
                      color: kPrimaryColor,
                      strokeWidth: 4,
                      dottedLength: 1.0,
                      space: 3.0,
                      corner: FDottedLineCorner.all(6),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "$BloodType",
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  Align(
                    alignment: Alignment.centerRight,
                    widthFactor: 3.5,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Text(
                          "Contact ",
                          style: TextStyle(color: kPrimaryColor),
                        )),
                  ),
                ],
              ),
            )
            // Column()
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = kPrimaryColor;
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5000000, size.height * 0.5000000),
            width: size.width,
            height: size.height),
        paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainterM extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = kPrimaryColor;
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5000000, size.height * 0.5000000),
            width: size.width,
            height: size.height),
        paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
