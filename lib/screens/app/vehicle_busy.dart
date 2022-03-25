import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicleBusy extends StatelessWidget {
  const VehicleBusy({Key? key}) : super(key: key);

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
        children: [
          const Spacer(flex: 2,),
          const FaIcon(FontAwesomeIcons.checkCircle, color: Colors.green,),
          const Spacer(flex: 1,),
          Text(
            "Araç boşluk durumu işleme alınmıştır.",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16,),
            child: Divider(
              color: Colors.black,
              indent: MediaQuery.of(context).size.width / 10,
              endIndent: MediaQuery.of(context).size.width / 10,
              thickness: 0.3,
            ),
          ),
          Text(
            "24 saat içinde\n geri dönüş sağlanacaktır.\nLütfen mailinizi kontrol ediniz.",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(flex: 1,),
          Text(
            "İyi Günler Dileriz.",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(flex: 2,),
        ],
      ),
    );
  }
}
