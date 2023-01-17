import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PastContainerWidget {
  PastContainerWidget._();
  static Widget  pastContainer (){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20,),
        Text("Past",style: GoogleFonts.raleway(color: const Color(0xff194B38), fontWeight: FontWeight.w700, fontSize: 20, letterSpacing: 1),),
        const SizedBox(height: 20,),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 400,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: const Color(0xffF1F4F3),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Image.asset("assets/meva1.png"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Text("Order 08/18/2021", style: GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff4B4B4B)),),
                  const SizedBox(height: 8,),
                  Text("\$ 25.4", style: GoogleFonts.montserrat(fontWeight: FontWeight.w800, fontSize: 18, color: const Color(0xff4CBB5E)),),
                  const SizedBox(height: 12,),
                  Container(
                    height: 1,
                    color: const Color(0xff9C9C9C).withOpacity(0.15),
                    width: 205,
                  ),
                  const SizedBox(height: 12,),
                  Text("Delivered to John’s Home", style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 10, color: const Color(0xff9C9C9C), letterSpacing: 0.5),),
                ],
              ),
            ],
          ),

        ),
        const SizedBox(height: 15,),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 400,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: const Color(0xffF1F4F3),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Image.asset("assets/qulupnay.png"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Text("Order 08/17/2021", style: GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff4B4B4B)),),
                  const SizedBox(height: 8,),
                  Text("\$ 15.6", style: GoogleFonts.montserrat(fontWeight: FontWeight.w800, fontSize: 18, color: const Color(0xff4CBB5E)),),
                  const SizedBox(height: 12,),
                  Container(
                    height: 1,
                    color: const Color(0xff9C9C9C).withOpacity(0.15),
                    width: 205,
                  ),
                  const SizedBox(height: 12,),
                  Text("Delivered to Yona’s Home", style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 10, color: const Color(0xff9C9C9C), letterSpacing: 0.5),),
                ],
              ),
            ],
          ),

        ),
      ],
    );
  }
}