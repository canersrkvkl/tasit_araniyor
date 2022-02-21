import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/account/onboardingScreen.dart';

class LocationPermission extends StatelessWidget {
  const LocationPermission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 36.0, right: 36.0),
                    child: SvgPicture.asset(
                      "assets/images/Group_27.svg",
                      width: 70,
                      height: 70,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                "assets/images/Path_179.svg",
              ),
              const SizedBox(height: 8,),
              Text(
                "Konum İzni",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF332222),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Text(
                "Taşıt aranıyor uygulaması açıkken veya sürüş,\npark, dinlenme vb. durumlarda kapalıyken\nkonum bilgisi alarak",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF332222),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                "assets/images/Group_26.svg",
              ),
              const SizedBox(height: 8,),
              Text(
                "Konumuna en yakın yükleri paylaşmak,",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF332222),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                "assets/images/Group_25.svg",
              ),
              const SizedBox(height: 8,),
              Text(
                "Sefer halindeyken yükün konumunu takip ederek daha\niyi lojistik hizmeti sunmak.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF332222),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                child: Text(
                  "Daha Sonra",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFFFDA328),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingScreen(),
                    ),
                  );
                },
              ),
              const Spacer(flex: 1,),
            ],
          ),
        ),
      ),
    );
  }
}
