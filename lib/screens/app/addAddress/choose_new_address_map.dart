import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/app/addAddress/choose_new_address_list.dart';

class ChooseNewAddressMap extends StatefulWidget {
  const ChooseNewAddressMap({Key? key}) : super(key: key);

  @override
  _ChooseNewAddressMapState createState() => _ChooseNewAddressMapState();
}

class _ChooseNewAddressMapState extends State<ChooseNewAddressMap> {
  TextEditingController tfcYukleme = TextEditingController();
  TextEditingController tfcBosaltma = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
        child: SizedBox(
          height: height / 1.1,
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
                  "Yükleme ve boşaltma noktalarını belirleyin.",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Yükleme Konum Seç",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              //YÜKLEME KONUM SEÇME TEXTFIELD
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: TextField(
                  controller: tfcYukleme,
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Adres, Yer veya Koordinat Giriniz",
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFFB3B4B4),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 27,
                      ),
                      onPressed: () {
                        //Arama butonuna tıklanıldığı zaman haritadan yükleme konumu seçmek için harita açılacak.
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Yükleme Boşaltma Konum Seç",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              //BOŞALTMA KONUM SEÇME TEXTFIELD
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: TextField(
                  controller: tfcBosaltma,
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      hintText: "Adres, Yer veya Koordinat Giriniz",
                      hintStyle: GoogleFonts.poppins(
                        color: const Color(0xFFB3B4B4),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 27,
                        ),
                        onPressed: () {
                          //Arama butonuna tıklanıldığı zaman haritadan boşaltma konumu seçmek için harita açılacak.
                        },
                      )),
                ),
              ),
              const Spacer(),
              //LİSTEDEN SEÇ BUTON
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => ChooseNewAddressList(),),);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "Listeden Seç",
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
      ),
    );
  }
}
