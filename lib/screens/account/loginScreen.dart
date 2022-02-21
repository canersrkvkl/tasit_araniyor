import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/app/choose_vehicle.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/Mask_Group_5.png",
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(flex: 1,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      "assets/images/Group_24.svg",
                      width: MediaQuery.of(context).size.width / 10,
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 9,),
              //Email TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: Colors.white,
                  style: GoogleFonts.poppins(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "E-Posta Adresiniz",
                    hintStyle: GoogleFonts.poppins(color: Colors.white),
                    fillColor: Colors.black,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: FaIcon(
                        FontAwesomeIcons.userAlt,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
              //ŞİFRE TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: Colors.white,
                  obscureText: true,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Şifreniz",
                    hintStyle: GoogleFonts.poppins(color: Colors.white),
                    fillColor: Colors.black,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: FaIcon(
                        FontAwesomeIcons.lock,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
              //BENİ HATIRLA VE PAROLAMI UNUTTUM
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.black,
                      activeColor: Colors.white,
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text(
                      "Beni Hatırla",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      child: const Text(
                        "Parolanızı mı unuttunuz?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              //GİRİŞ YAP BUTONU
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  bottom: 56,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChooseVehicle(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
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
        ],
      ),
    );
  }
}
