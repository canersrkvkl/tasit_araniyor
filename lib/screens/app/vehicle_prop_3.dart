import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/account/loginScreen.dart';
import 'package:tasit_araniyor/screens/app/addAddress/choose_new_address_map.dart';
import 'package:tasit_araniyor/screens/app/vehicle_prop_4.dart';

class VehicleProp3 extends StatefulWidget {
  const VehicleProp3({Key? key}) : super(key: key);

  @override
  _VehicleProp3State createState() => _VehicleProp3State();
}

class _VehicleProp3State extends State<VehicleProp3> {
  var kayitliAdres;
  var kayitliAdresItems = [
    "Kayıtlı Adres 1",
    "Kayıtlı Adres 2",
    "Kayıtlı Adres 3",
    "Kayıtlı Adres 4",
    "Kayıtlı Adres 5"
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
      body: Column(
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
              "Yükleme ve boşaltma noktalarını belirleyin.",
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
              "Kayıtlı Adreslerden Seçiniz",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          //KAYITLI ADRES SEÇİMİ DROPDOWNBUTTON
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
                  value: kayitliAdres,
                  onChanged: (newValue) {
                    setState(() {
                      kayitliAdres = newValue;
                    });
                  },
                  items: kayitliAdresItems.map((valueItem) {
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
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Container(
              color: const Color(0xFFEFFFF6),
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Colors.black,
                    size: 5,
                  ),
                  TextButton(
                    child: Text(
                      " Üye Girişi ",
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
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
                  Text(
                    "yaparak kayıtlı adreslerinizi seçebilirsiniz.",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          //YENİ ADRES SEÇ BUTONU
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseNewAddressMap(),),);
              },
              child: Container(
                color: Colors.black,
                height: 56,
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                  child: Text(
                    "Yeni Adres Seç",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          //DEVAM ET BUTONU
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleProp4(),),);
                debugPrint(kayitliAdres);
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
    );
  }
}
