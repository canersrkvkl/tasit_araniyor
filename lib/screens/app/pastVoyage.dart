import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PastVoyage extends StatefulWidget {
  const PastVoyage({Key? key}) : super(key: key);

  @override
  _PastVoyageState createState() => _PastVoyageState();
}

class _PastVoyageState extends State<PastVoyage> {
  bool openDetails = false;
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.alignRight,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          SvgPicture.asset(
            "assets/images/Group_24.svg",
            width: 41,
            height: 39,
          ),
          const SizedBox(
            width: 4,
          ),
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.ellipsisV,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 15,
              decoration: const BoxDecoration(
                color: Color(0xFF222222),
              ),
              child: Center(
                child: SvgPicture.asset("assets/images/location.svg"),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 18,
              decoration: const BoxDecoration(
                color: Color(0xFF363636),
              ),
              child: Center(
                child: Text(
                  "SEFERLER??M",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 19,
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "30 Seferden 16 tanesi g??steriliyor.",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        "T??m Seferler",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    openDetails = !openDetails;
                  });
                  debugPrint(width.toString());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      "1. Sefer ve Detaylar??",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
            openDetails == false
                ? const SizedBox()
                //SEFER BA??LI??INA TIKLANDI??INDA SEFER??N DETAYLARI BU KISIMDA A??ILACAK.
                : Container(
                  padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        //KA?? NUMARALI SEFER
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "1.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Sefer",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //SE????LEN SEFER??N DETAYLARI
                        Container(
                          padding: const EdgeInsets.only(left: 8.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(width: 1, color: Colors.grey,),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/shipping.svg",
                                    color: Colors.black,
                                    height: 16,
                                    width: 16,
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 16,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Ara?? ??zellikleri",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              //ARA?? ??ZELL??KLER??
                              Text(
                                "Komple - Kamyon - A????k - Tahta Taban",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 32,),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/clock.svg",
                                    color: Colors.black,
                                    height: 18,
                                    width: 18,
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 16,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Tarih ve Zaman",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              //TAR??H VE ZAMAN
                              //BA??LANGI?? VE ULA??IMLAR
                              Row(
                                children: [
                                  //SAB??T ALANLAR
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Ba??lang????", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Tarih ve Zaman", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.grey,),),
                                      const SizedBox(height: 4,),
                                      Text("1. Ula????m", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Tarih ve Zaman", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.grey,),),
                                      const SizedBox(height: 4,),
                                      Text("2. Ula????m", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Tarih ve Zaman", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.grey,),),
                                      const SizedBox(height: 4,),
                                      Text("3. Ula????m", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Tarih ve Zaman", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.grey,),),
                                    ],
                                  ),
                                  const SizedBox(width: 12,),
                                  //DATALAR
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Bursa Kamyon Garaj??", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("1 Ocak 2022 | 14:00 - 20:00", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.grey,),),
                                      const SizedBox(height: 4,),
                                      Text("Antalya", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("1 Ocak 2022 | 14:00 - 01:00", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.grey,),),
                                      const SizedBox(height: 4,),
                                      Text("Mersin", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("2 Ocak 2022 | 09:00 - 13:00", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.grey,),),
                                      const SizedBox(height: 4,),
                                      Text("Hatay", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("2 Ocak 2022 | 14:00 - 18:00", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.grey,),),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32,),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/location.svg",
                                    color: Colors.black,
                                    height: 18,
                                    width: 18,
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 16,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Nereden Nereye",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              //NEREDEN NEREYE
                              Row(
                                children: [
                                  //SAB??T ALANLAR
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Ba??lang???? Noktas??", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("1. Ula????m", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("2. Ula????m", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("3. Ula????m", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                    ],
                                  ),
                                  const SizedBox(width: 16,),
                                  //DATALAR
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Bursa Kamyon Garaj??", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Antalya", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Mersin", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Hatay", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32,),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/location.svg",
                                    color: Colors.black,
                                    height: 18,
                                    width: 18,
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 16,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "Y??k Tipi ve ??zellikleri",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              //Y??K T??P?? VE ??ZELL??KLER??
                              Row(
                                children: [
                                  //SAB??T ALANLAR
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Ton", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Desi", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Idm", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Y??kleme ??ekli", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                    ],
                                  ),
                                  const SizedBox(width: 16,),
                                  //DATALAR
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("10 - 12", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("4m3, 4m3", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("5", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                      Text("Vin??", style: GoogleFonts.poppins(fontWeight: FontWeight.w400,),),
                                      const SizedBox(height: 4,),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16,),
                              Row(
                                children: [
                                  IconButton(
                                    icon: isFavourite == false ? const FaIcon(FontAwesomeIcons.star,) : const FaIcon(FontAwesomeIcons.solidStar, color: Colors.orange,),
                                    onPressed: (){
                                      setState(() {
                                        isFavourite = !isFavourite;
                                      });
                                    },
                                  ),
                                  const SizedBox(width: 8,),
                                  Text("Favorilerime eklemek istiyorum.", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400,),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      "2. Sefer ve Detaylar??",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
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
    );
  }
}
