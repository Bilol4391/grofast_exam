import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/Widget/on_nfocused.dart';
import 'package:my_first_portfolio/Widget/popular_products.dart';
import 'package:my_first_portfolio/pages/notification_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelect = false;
  String name = '';

  Future<void> getName() async {
    SharedPreferences local = await SharedPreferences.getInstance();
    name = local.getString('nickname') ?? 'salom';
    setState(() {});
  }

  @override
  void initState() {
    getName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnUnFocusTap(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    margin: const EdgeInsets.only(top: 60, left: 20),
                    child: Image.asset(
                      "assets/Rectangle 61.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 65, top: 55),
                      width: 160,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: const Color(0xff777777)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 33),
                              child: Text(
                                "Yona's Home",
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: const Color(0xff9C9C9C)),
                              )),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return SizedBox(
                                        height: 450,
                                        child: Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                if (isSelect) {
                                                  isSelect = true;
                                                } else {
                                                  isSelect;
                                                }
                                              },
                                              child: Container(
                                                width: 430,
                                                height: 135,
                                                margin: const EdgeInsets.only(
                                                    left: 30,
                                                    right: 30,
                                                    top: 30),
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffF1F4F3),
                                                    border: isSelect
                                                        ? Border.all(
                                                            color: const Color(
                                                                0xff26AD71),
                                                            width: 3)
                                                        : Border.all(
                                                            color: Colors
                                                                .transparent),
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                30))),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 105,
                                                      height: 105,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Image.asset(
                                                        "assets/Rectangle 78.png",
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 15,
                                                                  top: 10),
                                                          child: Text(
                                                            "Yona's Home",
                                                            style: GoogleFonts
                                                                .raleway(
                                                              color: const Color(
                                                                  0xff4B4B4B),
                                                              letterSpacing:
                                                                  0.6,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 200,
                                                          height: 1,
                                                          color: const Color(
                                                              0xffE2E2E2),
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10,
                                                                  left: 15),
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 15,
                                                                      top: 14),
                                                              child: const Icon(
                                                                Icons
                                                                    .location_on,
                                                                size: 18,
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 180,
                                                              height: 70,
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 5,
                                                                      top: 10),
                                                              child: Text(
                                                                "Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia",
                                                                style: GoogleFonts.raleway(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: const Color(
                                                                        0xff9C9C9C)),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 430,
                                              height: 135,
                                              margin: const EdgeInsets.only(
                                                  left: 30, right: 30, top: 20),
                                              decoration: const BoxDecoration(
                                                  color: Color(0xffF1F4F3),
                                                  // border: Border.all(color: Color(0xff26AD71), width: 3),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30))),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 105,
                                                    height: 105,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Image.asset(
                                                      "assets/Rectangle 78 2.png",
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                                .only(
                                                            left: 15, top: 10),
                                                        child: Text(
                                                          "John's Home",
                                                          style: GoogleFonts
                                                              .raleway(
                                                            color: const Color(
                                                                0xff4B4B4B),
                                                            letterSpacing: 0.6,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 200,
                                                        height: 1,
                                                        color: const Color(
                                                            0xffE2E2E2),
                                                        margin: const EdgeInsets
                                                                .only(
                                                            top: 10, left: 15),
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 15,
                                                                    top: 14),
                                                            child: const Icon(
                                                              Icons.location_on,
                                                              size: 18,
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 180,
                                                            height: 70,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 5,
                                                                    top: 10),
                                                            child: Text(
                                                              "RT.001/RW.006, Cikiwul, Bantargebang, Kota Bks, Jawa Barat 17152, Indonesia",
                                                              style: GoogleFonts.raleway(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: const Color(
                                                                      0xff9C9C9C)),
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 60,
                                              width: 400,
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 30),
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(100)),
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xff26AD71),
                                                        Color(0xff32CB4B)
                                                      ],
                                                      begin:
                                                          Alignment.bottomLeft,
                                                      end: Alignment.topRight)),
                                              child: Center(
                                                  child: Text(
                                                "Submit",
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              )),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              icon: const Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Color(0xff777777),
                                size: 20,
                              )),
                        ],
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const NotificationPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 70, top: 55),
                      width: 30,
                      height: 30,
                      child: Image.asset(
                        "assets/Active copy.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Hey $name 👋",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w900,
                              fontSize: 28,
                              color: const Color(0xff194B38)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 8),
                        child: Text(
                          "Find fresh groceries you want",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: const Color(0xff9C9C9C)),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 295,
                                margin: const EdgeInsets.only(
                                    top: 25, left: 20, right: 20),
                                child: TextFormField(
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: 0.7,
                                      color: const Color(0xff194B38)),
                                  decoration: InputDecoration(
                                    filled: true,
                                    prefixIcon: const Icon(Icons.search_rounded,
                                        color: Color(0xff4CBB5E)),
                                    hintText: "Search fresh groceries",
                                    hintStyle: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: const Color(0xff194B38)),
                                    fillColor: const Color(0xff194B38)
                                        .withOpacity(0.06),
                                    border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      borderSide: BorderSide(
                                          color: const Color(0xff194B38)
                                              .withOpacity(0.06)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      borderSide: BorderSide(
                                          color: const Color(0xff194B38)
                                              .withOpacity(0.06)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      borderSide: BorderSide(
                                          color: const Color(0xff194B38)
                                              .withOpacity(0.06)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 65,
                                height: 65,
                                margin: const EdgeInsets.only(top: 22, left: 5),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff26AD71),
                                        Color(0xff32CB4B),
                                      ],
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/fluent_scan-object-20-filled.png"),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 958,
                            width: double.infinity,
                            child: GrdViev(),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
