import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/app/vehicle_prop_5.dart';

class VehicleProp4 extends StatefulWidget {
  const VehicleProp4({Key? key}) : super(key: key);

  @override
  _VehicleProp4State createState() => _VehicleProp4State();
}

class _VehicleProp4State extends State<VehicleProp4> {
  TextEditingController hacim = TextEditingController();
  var paketlemeTipi;
  var yukCinsi;
  var tonajAraligi;
  var yuklemeSekli;
  var malDegeri;
  bool hammaliyeValue = false;
  bool istiflenebilirValue = false;
  List paketlemeTipiItems = [
    "Paletli",
    "Ambalajlı Kutu / Koli",
    "Varil / Bidon",
    "IBC Tank",
    "Bobin"
  ];
  List yukCinsiItems = [
    "Yük Cinsi 1",
    "Yük Cinsi 2",
    "Yük Cinsi 3",
    "Yük Cinsi 4",
    "Yük Cinsi 5",
  ];

  List tonajAgirligiItems = [
    "1 Ton",
    "1 - 3 Ton",
    "4 - 6 Ton",
    "7 - 9 Ton",
    "10 - 12 Ton",
  ];

  List yuklemeSekliItems = [
    "El ile",
    "Forklift ile rampadan",
    "Forklift ile yandan",
    "Transpalet ile",
    "Vinç ile",
  ];

  List malDegeriItems = [
    "30.000 TL",
    "60.000 TL",
    "70.000 TL",
    "120.000 TL",
    "200.000 TL",
  ];

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
              height: MediaQuery.of(context).size.height / 13,
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
                  "NEREDEN NEREYE",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Yük özelliklerini girin.",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Paketleme Tipi *",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //PAKETLEME TİPİ SEÇİMİ DROPDOWNBUTTON
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
                    value: paketlemeTipi,
                    onChanged: (newValue) {
                      setState(() {
                        paketlemeTipi = newValue;
                      });
                    },
                    items: paketlemeTipiItems.map((valueItem) {
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
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Yük Cinsi *",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //YÜK CİNSİ SEÇİMİ DROPDOWNBUTTON
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
                    value: yukCinsi,
                    onChanged: (newValue) {
                      setState(() {
                        yukCinsi = newValue;
                      });
                    },
                    items: yukCinsiItems.map((valueItem) {
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
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Hacim (m3)",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //HACİM TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          controller: hacim,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "Hacim Bilgisi",
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "+",
                              style: TextStyle(
                                color: Color(0xFFED3269),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "-",
                              style: TextStyle(
                                fontSize: 16,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Desi",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //DESİ TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          controller: hacim,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "Desi Bilgisi",
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "+",
                              style: TextStyle(
                                color: Color(0xFFED3269),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "-",
                              style: TextStyle(
                                fontSize: 16,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Ldm",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //LDM TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          controller: hacim,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "Ldm Bilgisi",
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "+",
                              style: TextStyle(
                                color: Color(0xFFED3269),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 2,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "-",
                              style: TextStyle(
                                fontSize: 16,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Tonaj Aralığı *",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //TONAJ ARALIĞI SEÇİMİ DROPDOWNBUTTON
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
                    value: tonajAraligi,
                    onChanged: (newValue) {
                      setState(() {
                        tonajAraligi = newValue;
                      });
                    },
                    items: tonajAgirligiItems.map((valueItem) {
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
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Yükleme Şekli *",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //YÜKLEME ŞEKLİ SEÇİMİ DROPDOWNBUTTON
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
                    value: yuklemeSekli,
                    onChanged: (newValue) {
                      setState(() {
                        yuklemeSekli = newValue;
                      });
                    },
                    items: yuklemeSekliItems.map((valueItem) {
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
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Mal Değeri *",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //MAL DEĞERİ SEÇİMİ DROPDOWNBUTTON
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
                    value: malDegeri,
                    onChanged: (newValue) {
                      setState(() {
                        malDegeri = newValue;
                      });
                    },
                    items: malDegeriItems.map((valueItem) {
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
            //HAMMALİYE CHECKBOX
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: hammaliyeValue,
                    activeColor: Colors.black54,
                    checkColor: const Color(0xFF3BC3A8),
                    onChanged: (value) {
                      setState(() {
                        hammaliyeValue = value!;
                      });
                    },
                  ),
                  Text(
                    "Hammaliye",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            //İSTİFLENEBİLİR CHECKBOX
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: istiflenebilirValue,
                    activeColor: Colors.black54,
                    checkColor: const Color(0xFF3BC3A8),
                    onChanged: (value) {
                      setState(() {
                        istiflenebilirValue = value!;
                      });
                    },
                  ),
                  Text(
                    "İstiflenebilir",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Colors.black,
                    size: 8,
                  ),
                  Text(
                    " Mal Bedeli Sigortası ton başına 30.000 TL ile sınırlıdır.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Colors.black,
                    size: 8,
                  ),
                  Text(
                    " Hammaliye: Hamalın yük taşıma bedelidir.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            //DEVAM ET BUTONU
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VehicleProp5(),
                    ),
                  );
                  debugPrint(paketlemeTipi);
                  debugPrint(yukCinsi);
                  debugPrint(tonajAraligi);
                  debugPrint(yuklemeSekli);
                  debugPrint(malDegeri);
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
