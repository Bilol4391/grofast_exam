import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewContainerWidget {
  NewContainerWidget._();
  static Widget nowContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              "Now",
              style: GoogleFonts.raleway(
                  color: const Color(0xff194B38),
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  letterSpacing: 1),
            ),
            Container(
              width: 46,
              height: 30,
              margin: const EdgeInsets.only(left: 12),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff32CB4B), Color(0xff26AD71)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Center(
                  child: Text(
                "1",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffFAFFFD),
                    fontSize: 14),
              )),
            ),
          ],
        ),
        Container(
          width: 400,
          height: 215,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: const Color(0xffF1F4F3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/Rectangle 78 3.png"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Order 08/20/2021",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: const Color(0xff4B4B4B)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "\$ 12.2",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: const Color(0xff4CBB5E)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 1,
                        color: const Color(0xff9C9C9C).withOpacity(0.15),
                        width: 245,
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: SizedBox(
                  width: 324,
                  height: 97,
                  child: Image.asset(
                    "assets/Rectangle 82.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
