import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupConfirm extends StatelessWidget {
  const SignupConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: SvgPicture.asset(
          "assets/images/Group_24.svg",
          width: 41,
          height: 39,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/confirm_icon.png",
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Talebiniz işleme başarıyla alınmıştır.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 0.4,
              indent: MediaQuery.of(context).size.width / 10,
              endIndent: MediaQuery.of(context).size.width / 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "Firmamız üyelik onayı için 24 saat içinde\ngeri dönüş sağlayacaktır.\nLütfen mailinizi kontrol ediniz.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Spacer(),
            Text(
              "İyi Günler Dileriz",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}