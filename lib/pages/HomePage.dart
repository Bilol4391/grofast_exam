import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/pages/CategoryExpandedHorizontal.dart';
import 'package:my_first_portfolio/pages/DiscountPage.dart';
import 'package:my_first_portfolio/pages/Notification.dart';
import 'package:my_first_portfolio/pages/SearchPage.dart';
import 'package:my_first_portfolio/repository/get_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List listOfImage = ["assets/Rectangle 65.png", "assets/fruits.jpeg"];

  List<Color> listOfColor = [const Color(0xff194B38), Colors.white];

  List listOfButtonColor = [
    const Color(0xff4CBB5E).withOpacity(0.8),
    Colors.white.withOpacity(0.5)
  ];

  List listOfPercentage = [
    "45%",
    "15%",
  ];

  List listOfTitle = [
    "New Member",
    "New Member",
  ];

  List listOfText = [
    "discount",
    "discount",
  ];

  List listOfButtonTextColor = [
    Colors.white,
    Colors.white,
  ];

  List listOfCategoriesImage = [
    "assets/fruits.png",
    "assets/vegie.png",
    "assets/bread.png",
    "assets/meat.png",
    "assets/cheers.png",
    "assets/drinks.png"
  ];

  List listOfCategoriesText = [
    "Fruits",
    "Vegie",
    "Bread",
    "Meat",
    "Cheers",
    "Drinks"
  ];

  List listOfCategoriesColor = [
    const Color(0xffEBF4F1),
    const Color(0xffF3F3EA),
    const Color(0xffF3E9DD),
    const Color(0xffF8ECEC),
    const Color(0xffF8F5DE),
    const Color(0xffF9E9D2),
  ];

  List listOfPopularImage = [
    "assets/fruits2.png",
    "assets/vegie2.png",
    "assets/bread2.png",
    "assets/meat2.png",
    "assets/cheers.png",
    "assets/drinks.png"
  ];

  List listOfPopularPrice = [
    "\$ 1.8",
    "\$ 1.3",
    "\$ 1.7",
    "\$ 1.0",
    "\$ 1.8",
    "\$ 1.3",
  ];

  bool isSelect = false;

  @override
  void initState() {
    getInfor();
    super.initState();
  }

  Future<void> getInfor() async {
    await GetInfo.getInformation(text: 'pizza');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                                      return Container(
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
              Container(
                margin: const EdgeInsets.only(left: 20, top: 45),
                child: Text(
                  "Hey Yona 👋",
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
                        margin:
                            const EdgeInsets.only(top: 25, left: 20, right: 20),
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
                            fillColor:
                                const Color(0xff194B38).withOpacity(0.06),
                            border: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: const Color(0xff194B38)
                                      .withOpacity(0.06)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                  color: const Color(0xff194B38)
                                      .withOpacity(0.06)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
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
                            borderRadius: BorderRadius.all(Radius.circular(25)),
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
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listOfColor.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => DiscountPage(
                                        image: listOfImage[index],
                                        title: listOfTitle[index],
                                        text: listOfText[index],
                                        percent: listOfPercentage[index],
                                        listOfColor: listOfColor[index],
                                      )));
                            },
                            child: Container(
                              width: 350,
                              height: 180,
                              margin: const EdgeInsets.only(left: 22, top: 25),
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                image: DecorationImage(
                                    image: AssetImage(listOfImage[index]),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: Text(
                                      listOfTitle[index],
                                      style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w800,
                                          color: listOfColor[index],
                                          fontSize: 17,
                                          letterSpacing: 0.7),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 20, top: 3),
                                    child: Text(
                                      listOfText[index],
                                      style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w500,
                                          color: listOfColor[index],
                                          fontSize: 12,
                                          letterSpacing: 0.7),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(left: 20, top: 3),
                                    child: Text(
                                      listOfPercentage[index],
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w800,
                                          color: listOfColor[index],
                                          fontSize: 30,
                                          letterSpacing: 0.7),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100)),
                                      color: listOfButtonColor[index],
                                    ),
                                    margin: const EdgeInsets.only(
                                        left: 18, top: 10),
                                    child: Center(
                                        child: Text(
                                      "claim now",
                                      style: GoogleFonts.raleway(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: listOfButtonTextColor[index]),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 26),
                        child: Text(
                          "Categories",
                          style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff194B38)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const CategoryHorizontal()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 230, top: 8),
                          child: Text(
                            "See all",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff4CBB5E)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 125,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 90,
                              margin: const EdgeInsets.only(right: 0, top: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 73,
                                    margin: const EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(25)),
                                      color: listOfCategoriesColor[index],
                                    ),
                                    child: Image.asset(
                                        listOfCategoriesImage[index]),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 30, top: 10),
                                    child: Text(
                                      listOfCategoriesText[index],
                                      style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          color: const Color((0xff9C9C9C))),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 26),
                    child: Text(
                      "Popular",
                      style: GoogleFonts.raleway(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff194B38)),
                    ),
                  ),
                  SizedBox(
                    height: 642,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20.0,
                                  mainAxisSpacing: 20.0),
                          itemCount: listOfPopularImage.length,
                          itemBuilder: (BuildContext context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => SearchPage()));
                              },
                              child: Container(
                                height: 255,
                                width: 180,
                                decoration: const BoxDecoration(
                                    color: Color(0xffF1F4F3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.only(
                                          left: 130, top: 20),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color(0xffE9B1AF),
                                          )),
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        margin: const EdgeInsets.only(
                                            left: 3, right: 3),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffEC534A),
                                        ),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 13,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 65),
                                      child: Image.asset(
                                        listOfPopularImage[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 20, top: 15),
                                      child: Text(
                                        listOfCategoriesText[index],
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color: const Color(0xff194B38)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 18,
                                          width: 40,
                                          margin: const EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Text(
                                            listOfPopularPrice[index],
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color:
                                                    const Color((0xff4CBB5E))),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 5, top: 15),
                                          child: Text(
                                            "/kg",
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11,
                                                color:
                                                    const Color((0xff777777))),
                                          ),
                                        ),
                                        Container(
                                            width: 53,
                                            height: 41,
                                            margin: const EdgeInsets.only(
                                                left: 48, top: 17),
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                Color(0xff26AD71),
                                                Color(0xff32CB4B)
                                              ]),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(30)),
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
