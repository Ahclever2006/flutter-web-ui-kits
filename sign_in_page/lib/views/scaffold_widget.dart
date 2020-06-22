import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_page/views/centered_view.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ScaffoldWidget extends StatefulWidget {
  @override
  _ScaffoldWidgetState createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {

  Color mainBackgroundColor = Color(0xFFf5f6fa);
  Color boxDecorationColor = Colors.white;
  Color textFieldFillColor = Colors.white;
  Color signInTextColor = Color(0xFF232e4b);
  Color emailTextColor = Color(0xFF232e4b);
  Color textFieldBorderColor = Color(0xFFC0C4CC);
  Color hintTextColor = Color(0xFFC0C4CC);
  Color richTextColor = Color(0xFF232e4b);
  Color newOnOurPlatformColor = Color(0xFF232e4b);
  Color roundedRectangularBorderColor = Color(0xFF232e4b);
  Color materialButtonColor = Colors.white;
  Color materialButtonTextColor = Color(0xFF232e4b);
  Color bottomTextColor = Color(0xFFF43C7C);

  @override
  Widget build(BuildContext context) {

    var widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: CenteredView(
          child: Container(
            decoration: BoxDecoration(
                color: boxDecorationColor, borderRadius: BorderRadius.circular(5)),
            height: 800,
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0, left: 8.0, right: 60.0),
                      child: ToggleSwitch(
                        minWidth: 60.0,
                        initialLabelIndex: 0,
                        cornerRadius: 10.0,
                        activeBgColor: Color(0xFFF43C7C),
                        activeTextColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveTextColor: Colors.grey[900],
                        labels: ['Light', 'Dark'],
                        onToggle: (index) {
                          setState(() {
                            if (index == 0) {

                              mainBackgroundColor = Color(0xFFf5f6fa);
                              boxDecorationColor = Colors.white;
                              textFieldFillColor = Colors.white;
                              signInTextColor = Color(0xFF232e4b);
                              emailTextColor = Color(0xFF232e4b);
                              textFieldBorderColor = Color(0xFFC0C4CC);
                              hintTextColor = Color(0xFFC0C4CC);
                              richTextColor = Color(0xFF232e4b);
                              newOnOurPlatformColor = Color(0xFF232e4b);
                              roundedRectangularBorderColor = Color(0xFF232e4b);
                              materialButtonColor = Colors.white;
                              materialButtonTextColor = Color(0xFF232e4b);
                              bottomTextColor = Color(0xFFF43C7C);

                            }else if (index == 1) {
                              mainBackgroundColor = Color(0xFF1E1E21);
                              boxDecorationColor = Colors.black54;
                              textFieldFillColor = Colors.black54;
                              signInTextColor = Colors.white;
                              emailTextColor = Colors.white70;
                              textFieldBorderColor = Color(0xFF8C8C94);
                              hintTextColor = Colors.white30;
                              richTextColor = Color(0xFF8C9494);
                              newOnOurPlatformColor = Color(0xFF8C9494);
                              roundedRectangularBorderColor = Color(0xFFF43C7C);
                              materialButtonColor = Colors.black54;
                              materialButtonTextColor = Color(0xFF8C9494);
                              bottomTextColor = Color(0xFF8C8C94);
                            }
                          });

//                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 60.0, left: 60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Sign-In',
                          style: GoogleFonts.openSans(
                              fontSize: 25,
                              color: signInTextColor,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Email or phone number',
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: emailTextColor,
                                  fontWeight: FontWeight.w600)),
                          Text('Need Help?',
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Color(0xFFF43C7C),
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 50,
                        width: widthOfScreen,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 20),
                              filled: true,
                              fillColor: textFieldFillColor,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: textFieldBorderColor,
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: textFieldBorderColor,
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: textFieldBorderColor,
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              hintStyle: GoogleFonts.openSans(
                                  fontSize: 12,
                                  color: hintTextColor,
                                  fontWeight: FontWeight.w600),
                              hintText: 'Enter your email address or phone number'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                          onPressed: () {},
                          elevation: 0,
                          minWidth: widthOfScreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(width: 0, style: BorderStyle.none),
                          ),
                          height: 55,
                          color: Color(0xFFF43C7C),
                          child: Text('Continue',
                              style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600))),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'By continuing, you agree to our ',
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: richTextColor,
                                    fontWeight: FontWeight.w500)),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Conditions of Use ',
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      textStyle: TextStyle(
                                          color: richTextColor,
                                          fontWeight: FontWeight.bold))),
                              TextSpan(
                                  text: 'and',
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      textStyle: TextStyle(
                                          color: richTextColor,
                                          fontWeight: FontWeight.w500))),
                              TextSpan(
                                  text: ' Privacy Notice',
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      textStyle: TextStyle(
                                          color: richTextColor,
                                          fontWeight: FontWeight.bold)))
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('New on our platform?',
                          style: GoogleFonts.openSans(
                              fontSize: 13,
                              color: newOnOurPlatformColor,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 8,
                      ),
                      MaterialButton(
                          onPressed: () {},
                          elevation: 0,
                          minWidth: widthOfScreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(width: 2, style: BorderStyle.solid, color: roundedRectangularBorderColor.withOpacity(0.5)),
                          ),
                          height: 50,
                          color: materialButtonColor,
                          child: Text('Create an Account',
                              style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  color: materialButtonTextColor,
                                  fontWeight: FontWeight.w600))),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Color(0xFF232e4b).withOpacity(0.3),
                  height: 2,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 60.0, left: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Conditions of Use',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: bottomTextColor,
                              fontWeight: FontWeight.w400)),
                      Text('Privacy Notice',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: bottomTextColor,
                              fontWeight: FontWeight.w400)),
                      Text('Help',
                          style: GoogleFonts.openSans(
                              fontSize: 12,
                              color: bottomTextColor,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),

              ],
            ),
          )),
    );
  }
}



