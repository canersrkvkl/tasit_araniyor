import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/account/loginScreen.dart';
import 'package:tasit_araniyor/screens/account/signupConfirm.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: SvgPicture.asset(
          "assets/images/Group_24.svg",
          width: 41,
          height: 39,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //YAZI ALANI
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Kayıt olmanız için lütfen tüm bilgileri giriniz",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              //AD SOYAD TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Ad Soyad",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //TELEFON TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Telefon",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //EPOSTA TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "E-Posta",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //BELGELER DROPDOWNBUTTON
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Belgeler kısmı buraya gelecek.",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              //PLAKA TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Plaka",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //FRIGO TÜRÜ DROPDOWNBUTTON
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Frigo türü kısmı buraya gelecek.",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              //ARAÇ TÜRÜ DROPDOWNBUTTON
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Araç türü kısmı buraya gelecek.",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              //KASA TİPİ DROPDOWNBUTTON
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Kasa tipi kısmı buraya gelecek.",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              //ZİNCİR UYGUN MU DROPDOWNBUTTON
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Zincir uygun mu kısmı buraya gelecek.",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              //İADE UYGUN MU DROPDOWNBUTTON
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Belgeler kısmı buraya gelecek.",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              //MARKA MODEL TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Marka / Model",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //MODEL YILI TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Model Yılı",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //RENK TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Renk",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //MOTOR NO TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Motor No",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //ŞAHSİ NO TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Şahsi No",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //NET AĞIRLIK TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Net Ağırlık",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //PALET KAPASİTESİ TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Palet Kapasitesi",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //İSTİHAB HADDİ TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "İstihab Haddi",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //AZM YÜKLÜ AĞIRLIĞI TEXTFIELD
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      "assets/images/Line_14.svg",
                      color: Colors.black,
                      width: 1.7,
                    ),
                    hintText: "Azm. Yüklü Ağırlığı",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              //GÖNDER BUTONU
              Padding(
                padding: const EdgeInsets.only(
                  left: 4.0,
                  right: 4.0,
                  top: 32.0,
                  bottom: 16.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupConfirm(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Gönder",
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
              //ZATEN ÜYE MİSİNİZ? GİRİŞ YAP
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                child: Row(
                  children: [
                    const Spacer(),
                    Text(
                      "Zaten üye misiniz?",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF626262),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        "Giriş Yap",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF1D53FB),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
