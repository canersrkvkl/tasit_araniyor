import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/app/vehicle_prop_2.dart';

class VehicleProp1 extends StatefulWidget {
  final String vehicle;
  const VehicleProp1({Key? key, required this.vehicle}) : super(key: key);

  @override
  _VehicleProp1State createState() => _VehicleProp1State();
}

class _VehicleProp1State extends State<VehicleProp1> {
  var vehicleCount = 0;
  final aracTuruItems = ["Tür 1", "Tür 2", "Tür 3", "Tür 4", "Tür 5"];
  final kasaTipiItems = ["Tip 1", "Tip 2", "Tip 3", "Tip 4", "Tip 5"];
  TextEditingController tfcFrigoTuru = TextEditingController();
  var aracTuru;
  var kasaTipi;

  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 15,
              decoration: const BoxDecoration(
                color: Color(0xFF222222),
              ),
              child: Center(
                child: SvgPicture.asset("assets/images/shipping.svg"),
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
                  "ARAÇ ÖZELLİKLERİ",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
                bottom: 8,
              ),
              child: Text(
                "Araç özelliklerini seçin.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
                bottom: 8,
              ),
              child: Text(
                "Araç Adedi*",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            //ARAÇ ADEDİ SAYISI SEÇİMİ
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                          ),
                          left: BorderSide(
                            color: Colors.black,
                          ),
                          right: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          vehicleCount.toString(),
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 8,
                        bottom: 8,
                        top: 8,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.vehicle,
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Text(" | "),
                              Text(
                                "Ortalama 15 Ton",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "En",
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                    "2.45m",
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "Boy",
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                    "7.2m",
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Text(
                                    "Yükseklik",
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Text(
                                    "2.4m",
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                          ),
                          left: BorderSide(
                            color: Colors.grey,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                vehicleCount++;
                              });
                            },
                            child: const Text(
                              "+",
                              style: TextStyle(
                                color: Color(0xFFED3269),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                vehicleCount <= 0
                                    ? vehicleCount = 0
                                    : vehicleCount--;
                              });
                            },
                            child: const Text(
                              "-",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Text(
                "Araç Türü",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
            ),
            //ARAÇ TÜRÜ DROPDOWNBUTTON
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 8,
                top: 8,
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: Text(
                      "Seçiniz",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFFB3B4B4),
                      ),
                    ),
                    icon: const FaIcon(
                      FontAwesomeIcons.chevronDown,
                      color: Colors.black,
                    ),
                    isExpanded: true,
                    value: aracTuru,
                    onChanged: (newValue) {
                      setState(() {
                        aracTuru = newValue;
                      });
                    },
                    items: aracTuruItems.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(
                          valueItem,
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Text(
                "Kasa Tipi",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
            ),
            //KASA TİPİ DROPDOWNBUTTON
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 8,
                top: 8,
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: Text(
                      "Seçiniz",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFFB3B4B4),
                      ),
                    ),
                    icon: const FaIcon(
                      FontAwesomeIcons.chevronDown,
                      color: Colors.black,
                    ),
                    isExpanded: true,
                    value: kasaTipi,
                    onChanged: (newValue) {
                      setState(() {
                        kasaTipi = newValue;
                      });
                    },
                    items: kasaTipiItems.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(
                          valueItem,
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Text(
                "Frigo Türü",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
            ),
            //FRİGO TÜRÜ TEXTFIELD
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
                bottom: 8,
              ),
              child: TextField(
                controller: tfcFrigoTuru,
                cursorColor: Colors.black,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: "Özellikler",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFFB3B4B4),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            //DEVAM ET BUTONU
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VehicleProp2(),
                    ),
                  );
                  debugPrint(vehicleCount.toString());
                  debugPrint(aracTuru);
                  debugPrint(kasaTipi);
                  debugPrint(tfcFrigoTuru.text);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  child: Center(
                    child: Text(
                      "Devam Et",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  color: Colors.black,
                ),
              ),
            ),
            //GERİ DÖN BUTONU
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  child: Center(
                      child: Text(
                    "Geri",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )),
                  color: const Color(0xFFB3B4B4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
