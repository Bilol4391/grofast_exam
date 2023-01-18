import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/pages/CategoryExpandedHorizontal.dart';
import 'package:my_first_portfolio/pages/SearchPage.dart';

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

class GrdViev extends StatefulWidget {
  const GrdViev({super.key});

  @override
  State<GrdViev> createState() => _GrdVievState();
}

class _GrdVievState extends State<GrdViev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
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
              GestureDetector(
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              color: listOfCategoriesColor[index],
                            ),
                            child: Image.asset(listOfCategoriesImage[index]),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 30, top: 10),
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
            height: 630,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0),
                itemCount: listOfPopularImage.length,
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const SearchPage()));
                    },
                    child: Container(
                      height: 255,
                      width: 180,
                      decoration: const BoxDecoration(
                          color: Color(0xffF1F4F3),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: const EdgeInsets.only(left: 130, top: 20),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xffE9B1AF),
                                )),
                            child: Container(
                              width: 20,
                              height: 20,
                              margin: const EdgeInsets.only(left: 3, right: 3),
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
                            margin: const EdgeInsets.only(left: 20, top: 15),
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
                                margin:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  listOfPopularPrice[index],
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: const Color((0xff4CBB5E))),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5, top: 15),
                                child: Text(
                                  "/kg",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                      color: const Color((0xff777777))),
                                ),
                              ),
                              Container(
                                width: 53,
                                height: 41,
                                margin:
                                    const EdgeInsets.only(left: 48, top: 17),
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xff26AD71),
                                    Color(0xff32CB4B)
                                  ]),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(30)),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
