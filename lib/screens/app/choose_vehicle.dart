import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasit_araniyor/screens/app/vehicle_prop_1.dart';

class ChooseVehicle extends StatefulWidget {
  const ChooseVehicle({Key? key}) : super(key: key);

  @override
  _ChooseVehicleState createState() => _ChooseVehicleState();
}

class _ChooseVehicleState extends State<ChooseVehicle> {
  String choosenVehicle = "";

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
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SvgPicture.asset("assets/images/Group_363.svg"),
              ),
              Text(
                "Hangi araca sahipsin.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                "HANGİ TİP TAŞIMAYA\nİHTİYACIN VAR?",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                "İhtiyacınız olan araç tipine tıklayın.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: () {
                    choosenVehicle = "Kamyon";
                    Navigator.push(context, MaterialPageRoute(builder:(context) => VehicleProp1(vehicle: choosenVehicle,),),);
                  },
                  child: Card(
                    color: const Color(0xFFB3B4B4),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/images/Group_355.svg"),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Kamyon",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: () {
                    choosenVehicle = "Tır";
                    Navigator.push(context, MaterialPageRoute(builder:(context) => VehicleProp1(vehicle: choosenVehicle,),),);
                  },
                  child: Card(
                    color: const Color(0xFFB3B4B4),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/images/Group_330.svg"),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Tır",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: () {
                    choosenVehicle = "Kırkayak";
                    Navigator.push(context, MaterialPageRoute(builder:(context) => VehicleProp1(vehicle: choosenVehicle,),),);
                  },
                  child: Card(
                    color: const Color(0xFFB3B4B4),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset("assets/images/Group_273.png"),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Kırkayak",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
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
