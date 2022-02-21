import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/account/loginScreen.dart';
import 'package:tasit_araniyor/screens/account/signupScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/Mask_Group_5.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SvgPicture.asset(
              "assets/images/rectangle_301.svg",
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Column(
              children: [
                const Spacer(),
                SvgPicture.asset(
                  "assets/images/Group_24.svg",
                  width: MediaQuery.of(context).size.width / 3,
                  height: 80,
                ),
                const Spacer(),
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width / 1.5,
                  color: Colors.deepPurple.withOpacity(0.4),
                  child: Center(
                    child: Text(
                      "ŞOFÖR",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width / 1.5,
                  color: Colors.blue.withOpacity(0.4),
                  child: Center(
                    child: Text(
                      "NAKLİYECİ",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  "Malların hızlı, güvenli &\nemniyetli teslimatı",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                //ÜYE OL BUTONU
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Üye Ol",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                //GİRİŞ YAP BUTONU
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    bottom: 66,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Giriş Yap",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}