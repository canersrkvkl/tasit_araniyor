import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:tasit_araniyor/screens/app/vehicle_prop_3.dart';

class VehicleProp2 extends StatefulWidget {
  const VehicleProp2({Key? key}) : super(key: key);

  @override
  _VehicleProp2State createState() => _VehicleProp2State();
}

class _VehicleProp2State extends State<VehicleProp2> {
  DateTime _dateTime = DateTime.now();
  var _time1;
  var _time2;
  var date;
  var formattedTime1 = "";
  var formattedTime2 = "";
  var formattedDate = "";
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
          height: height,
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
                  child: SvgPicture.asset("assets/images/clock.svg"),
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
                    "TARİH VE ZAMAN",
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
                  "Yükleme yapmak istediğiniz zamanı seçin.",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  "Yükleme Tarihi *",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              //TARİH SEÇME ALANI
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: GestureDetector(
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) => CupertinoActionSheet(
                        actions: [
                          SizedBox(
                            height: 180,
                            child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date,
                                onDateTimeChanged: (dateTime) {
                                  setState(() {
                                    _dateTime = dateTime;
                                  });
                                }),
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          child: Text(
                            "Bitti",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              final value =
                                  DateFormat("dd / MM / yyyy").format(_dateTime);
                              formattedDate = value;
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          formattedDate.isEmpty
                              ? Text(
                                  "31 / 12 / 2021",
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFFB3B4B4),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              : Text(
                                  formattedDate,
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                          const Icon(
                            Icons.calendar_today,
                            color: Colors.black54,
                            size: 28,
                          ),
                        ],
                      ),
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
                  "En Erken *",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              //EN ERKEN SAATİ SEÇME ALANI
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: GestureDetector(
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) => CupertinoActionSheet(
                        actions: [
                          SizedBox(
                            height: 180,
                            child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.time,
                                use24hFormat: true,
                                onDateTimeChanged: (time) {
                                  setState(() {
                                    _time1 = time;
                                  });
                                }),
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          child: Text(
                            "Bitti",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              final value = DateFormat("HH:mm").format(_time1);
                              formattedTime1 = value;
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          formattedTime1.isEmpty
                              ? Text(
                                  "10.30",
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFFB3B4B4),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              : Text(
                                  formattedTime1,
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                          SvgPicture.asset("assets/images/clock.svg"),
                        ],
                      ),
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
                  "En Geç *",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              //EN GEÇ SAATİ SEÇME ALANI
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: GestureDetector(
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) => CupertinoActionSheet(
                        actions: [
                          SizedBox(
                            height: 180,
                            child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.time,
                                use24hFormat: true,
                                onDateTimeChanged: (time) {
                                  setState(() {
                                    _time2 = time;
                                  });
                                }),
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          child: Text(
                            "Bitti",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              final value = DateFormat("HH:mm").format(_time2);
                              formattedTime2 = value;
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          formattedTime2.isEmpty
                              ? Text(
                                  "12.30",
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFFB3B4B4),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              : Text(
                                  formattedTime2,
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                          SvgPicture.asset("assets/images/clock.svg"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 2,),
              //DEVAM ET BUTONU
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => VehicleProp3(),),);
                    debugPrint(formattedDate);
                    debugPrint(_time1.toString());
                    debugPrint(_time2.toString());
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
              const Spacer(flex: 1,),
            ],
          ),
        ),
      ),
    );
  }
}
