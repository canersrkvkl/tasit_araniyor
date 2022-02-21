import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/app/addAddress/choose_new_address_list_2.dart';
import 'package:tasit_araniyor/screens/app/addAddress/choose_new_address_map.dart';

class ChooseNewAddressList extends StatefulWidget {
  const ChooseNewAddressList({Key? key}) : super(key: key);

  @override
  _ChooseNewAddressListState createState() => _ChooseNewAddressListState();
}

class _ChooseNewAddressListState extends State<ChooseNewAddressList> {
  TextEditingController tfcYukleme = TextEditingController();

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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                "Yükleme noktalarını belirleyin.",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                "Lokasyon Adı *",
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
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseNewAddressMap(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "Haritadan Seç",
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
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "Ülke",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //ÜLKE TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Türkiye",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "İl",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //İL TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Ankara",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "İlçe",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //İLÇE TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Çankaya",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "Mahalle",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //MAHALLE TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Bahçeli Mh.",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "Cadde / Sokak",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //CADDE/SOKAK TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Bulunamadı",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "Posta Kodu",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //POSTA KODU TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "06030",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "Bina Bilgisi",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //BİNA BİLGİSİ TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Deneme",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "Adres Tarifi",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //ADRES TARİFİ TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Adres Tarifi Deneme",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "Yetkili Kişi *",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //YETKİLİ KİŞİ TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Caner Sarıkavaklı",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: Text(
                "Telefon Numarası *",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            //TELEFON NUMARASI TEXTFIELD
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 32.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "(507) 987 65 43",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            //VAZGEÇ BUTONU
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "Vazgeç",
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
            //GERİ BUTONU
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  color: const Color(0xFFB3B4B4),
                  child: Center(
                    child: Text(
                      "Geri",
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
            //YÜKLEME NOKTASINI EKLE BUTONU
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseNewAddress2(),),);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  color: const Color(0xFFFDA328),
                  child: Center(
                    child: Text(
                      "Yükleme Noktasını Ekle",
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
    );
  }
}