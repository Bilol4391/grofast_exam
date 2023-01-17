import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/pages/MainHomePage.dart';
import 'package:my_first_portfolio/pages/ProductPage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
    "assets/fruits_2.png",
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

  List listOfFruitsText = [
    "Oranges",
    "Mango",
    "Strawberry",
    "Grabe",
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
  ];

  List listOfFruitsImage = [
    "assets/fruits_1.png",
    "assets/fruits_2.png",
    "assets/fruits_3.png",
    "assets/fruits_4.png",
  ];

  List listOfVegieImage = [
    "assets/Vegie_1.png",
    "assets/Vegie_2.png",
    "assets/Vegie_3.png",
    "assets/Vegie_4.png",
  ];

  List listOfVegieText = [
    "Brocoli",
    "Red Bell Pepper",
    "Chili",
    "Tomato",
  ];

  List listOfVegiePrice = [
    "\$ 1.8",
    "\$ 2.2",
    "\$ 2.3",
    "\$ 4.1",
  ];

  List listOfPopularPrice = [
    "\$ 1.8",
    "\$ 1.3",
    "\$ 1.7",
    "\$ 1.0",
  ];

  List listOfBreadImage = [
    "assets/Bread_1.png",
    "assets/Bread_2.png",
    "assets/Bread_3.png",
    "assets/Bread_1.png",
  ];

  List listOfBreadText = [
    "Sliced Bread",
    "Baguette",
    "Donut",
    "Baguette",
  ];

  List listOfBreadPrice = [
    "\$ 1.3",
    "\$ 2.5",
    "\$ 2.1",
    "\$ 3.4",
  ];

  List listOfMeatImage = [
    "assets/Meat_1.png",
    "assets/Meat_2.png",
    "assets/Meat_3.png",
    "assets/Meat_1.png",
  ];

  List listOfMeatText = [
    "Buffalo Meat",
    "Chicken Meat",
    "Burger Patty",
    "Pork Meat",
  ];

  List listOfMeatPrice = [
    "\$ 7.1",
    "\$ 2.2",
    "\$ 2.3",
    "\$ 7.4",
  ];

  List listOfStar = [
    "assets/star.png",
    "assets/star.png",
    "assets/star.png",
    "assets/star.png",
  ];

  List listOfStarFruitText = [
    "4.7",
    "3.5",
    "4.2",
    "2.4",
  ];

  List listOfFruitIcon = [
    "🥝",
    "🥝",
    "🥝",
    "🥝",
  ];

  List listOfFruitIconText = [
    "Fruits",
    "Fruits",
    "Fruits",
    "Fruits",
  ];

  List listOfStarVegieText = [
    "4.3",
    "3.2",
    "4.4",
    "2.1",
  ];

  List listOfVegieIcon = [
    "🌽",
    "🌽",
    "🌽",
    "🌽",
  ];

  List listOfVegieIconText = [
    "Vegie",
    "Vegie",
    "Vegie",
    "Vegie",
  ];

  List listOfStarBreadText = [
    "1.7",
    "2.5",
    "1.2",
    "3.4",
  ];

  List listOfBreadIcon = [
    "🍞",
    "🍞",
    "🍞",
    "🍞",
  ];

  List listOfBreadIconText = [
    "Bread",
    "Bread",
    "Bread",
    "Bread",
  ];

  List listOfStarMeatText = [
    "4.7",
    "5.5",
    "6.2",
    "7.4",
  ];

  List listOfMeatIcon = [
    "🍖",
    "🍖",
    "🍖",
    "🍖",
  ];

  List listOfMeatIconText = [
    "Meat",
    "Meat",
    "Meat",
    "Meat",
  ];

  int index = -1;
  int menuImage = -1;
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const MainHomePage()));
                },
                child: Container(
                  width: 80,
                  height: 50,
                  margin: const EdgeInsets.only(left: 20, top: 60),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(
                          color: const Color(0xff777777).withOpacity(0.2))),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xff777777),
                  ),
                ),
              ),
              Container(
                height: 25,
                width: 25,
                margin: const EdgeInsets.only(left: 280, top: 70),
                child: Image.asset(
                  "assets/bag.png",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 295,
                margin: const EdgeInsets.only(top: 35, left: 20, right: 20),
                child: TextFormField(
                  onChanged: (value) {
                    isChanged = true;
                    setState(() {});
                  },
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
                    fillColor: const Color(0xff194B38).withOpacity(0.06),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: const Color(0xff194B38).withOpacity(0.06)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: const Color(0xff194B38).withOpacity(0.06)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: const Color(0xff194B38).withOpacity(0.06)),
                    ),
                  ),
                ),
              ),
              Container(
                width: 65,
                height: 65,
                margin: const EdgeInsets.only(top: 35, left: 5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    color: const Color(0xff194B38).withOpacity(0.06),
                    image: const DecorationImage(
                      image: AssetImage("assets/Group.png"),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 165,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: !isChanged
                  ? ListView.builder(
                      itemCount: listOfPopularImage.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            if (this.index == index) {
                              this.index = -1;
                            } else {
                              this.index = index;
                            }

                            setState(() {});
                          },
                          child: Container(
                            width: 120,
                            margin: const EdgeInsets.only(right: 0, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  width: 153,
                                  margin: const EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: this.index == index
                                            ? const Color(0xff2AAF7F)
                                            : const Color(0xffEBEEF2),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25)),
                                    color: listOfCategoriesColor[index],
                                  ),
                                  child: Image.asset(listOfPopularImage[index]),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Center(
                                    child: Text(
                                      listOfCategoriesText[index],
                                      style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          color: const Color((0xff9C9C9C))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                  : ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
            ),
          ),
          index == 0
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 29,
                          height: 29,
                          margin: const EdgeInsets.only(left: 25, top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffEBF4F1),
                            image: const DecorationImage(
                                image: AssetImage("assets/Icon.png")),
                          ),
                        ),
                        SizedBox(
                          width: 170,
                          child: Padding(
                              padding: const EdgeInsets.only(left: 15, top: 13),
                              child: Text(
                                "All Fresh Fruits",
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: const Color(0xff194B38)),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (menuImage == index) {
                              menuImage = -1;
                            } else {
                              menuImage = index;
                            }

                            setState(() {});
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 160, top: 18),
                            child: menuImage == index
                                ? Image.asset("assets/verticalmenu.png")
                                : Image.asset("assets/Menu.png"),
                          ),
                        )
                      ],
                    ),
                    menuImage == index
                        ? SizedBox(
                            height: 418,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 0),
                              child: GridView.builder(
                                  // physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 1,
                                          mainAxisExtent: 177.0,
                                          crossAxisSpacing: 20.0,
                                          mainAxisSpacing: 20.0),
                                  itemCount: listOfFruitsImage.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF1F4F3),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 126,
                                                width: 126,
                                                margin: const EdgeInsets.only(
                                                    top: 10),
                                                child: Image.asset(
                                                    listOfFruitsImage[index]),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 25,
                                                    width: 110,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 10, top: 5),
                                                    child: Text(
                                                      listOfFruitsText[index],
                                                      style: GoogleFonts.raleway(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 20,
                                                          color: const Color(
                                                              0xff194B38)),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 18,
                                                        width: 40,
                                                        margin: const EdgeInsets
                                                                .only(
                                                            left: 20, top: 10),
                                                        child: Text(
                                                          listOfPopularPrice[
                                                              index],
                                                          style: GoogleFonts.montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18,
                                                              color: const Color(
                                                                  (0xff4CBB5E))),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: const EdgeInsets
                                                                .only(
                                                            left: 5, top: 15),
                                                        child: Text(
                                                          "/kg",
                                                          style: GoogleFonts.montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 11,
                                                              color: const Color(
                                                                  (0xff777777))),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                margin: const EdgeInsets.only(
                                                    left: 95, bottom: 40),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xffE9B1AF),
                                                    )),
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  margin: const EdgeInsets.only(
                                                      left: 3, right: 3),
                                                  decoration:
                                                      const BoxDecoration(
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
                                            ],
                                          ),
                                          Container(
                                              width: 53,
                                              height: 41,
                                              margin: const EdgeInsets.only(
                                                  left: 338, bottom: 0),
                                              decoration: const BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff26AD71),
                                                      Color(0xff32CB4B)
                                                    ]),
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(30)),
                                              ),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder:
                                                              (_) =>
                                                                  ProductPage(
                                                                    image: listOfFruitsImage[
                                                                        index],
                                                                    title: listOfFruitsText[
                                                                        index],
                                                                    star: listOfStar[
                                                                        index],
                                                                    price: listOfPopularPrice[
                                                                        index],
                                                                    starText:
                                                                        listOfStarFruitText[
                                                                            index],
                                                                    iconImage:
                                                                        listOfFruitIcon[
                                                                            index],
                                                                    iconText:
                                                                        listOfFruitIconText[
                                                                            index],
                                                                  )));
                                                },
                                                child: const Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                ),
                                              )),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          )
                        : SizedBox(
                            height: 418,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 0),
                              child: GridView.builder(
                                  // physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisExtent: 315.0,
                                          crossAxisSpacing: 20.0,
                                          mainAxisSpacing: 20.0),
                                  itemCount: listOfFruitsImage.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF1F4F3),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            margin: const EdgeInsets.only(
                                                left: 130, top: 20),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color:
                                                      const Color(0xffE9B1AF),
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
                                          Center(
                                            child: SizedBox(
                                              height: 176,
                                              child: Image.asset(
                                                  listOfFruitsImage[index]),
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            margin: const EdgeInsets.only(
                                                left: 20, top: 11),
                                            child: Text(
                                              listOfFruitsText[index],
                                              style: GoogleFonts.raleway(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color:
                                                      const Color(0xff194B38)),
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
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 18,
                                                      color: const Color(
                                                          (0xff4CBB5E))),
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 5, top: 15),
                                                child: Text(
                                                  "/kg",
                                                  style: GoogleFonts.montserrat(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11,
                                                      color: const Color(
                                                          (0xff777777))),
                                                ),
                                              ),
                                              Container(
                                                  width: 53,
                                                  height: 41,
                                                  margin: const EdgeInsets.only(
                                                      left: 48, top: 17),
                                                  decoration:
                                                      const BoxDecoration(
                                                    gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xff26AD71),
                                                          Color(0xff32CB4B)
                                                        ]),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(20),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30)),
                                                  ),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  ProductPage(
                                                                    image: listOfFruitsImage[
                                                                        index],
                                                                    title: listOfFruitsText[
                                                                        index],
                                                                    star: listOfStar[
                                                                        index],
                                                                    price: listOfPopularPrice[
                                                                        index],
                                                                    starText:
                                                                        listOfStarFruitText[
                                                                            index],
                                                                    iconImage:
                                                                        listOfFruitIcon[
                                                                            index],
                                                                    iconText:
                                                                        listOfFruitIconText[
                                                                            index],
                                                                  )));
                                                    },
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                  ],
                )
              : index == 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 29,
                              height: 29,
                              padding:
                                  const EdgeInsets.only(left: 5, bottom: 3),
                              margin: const EdgeInsets.only(left: 25, top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffEBF4F1),
                                // image: DecorationImage(
                                //     image: AssetImage("assets/Icon.png")),
                              ),
                              child: const Center(child: Text("🌽")),
                            ),
                            SizedBox(
                              width: 170,
                              child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 13),
                                  child: Text(
                                    "All Fresh Vegies",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: const Color(0xff194B38)),
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (menuImage == index) {
                                  menuImage = -1;
                                } else {
                                  menuImage = index;
                                }

                                setState(() {});
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 160, top: 18),
                                child: menuImage == index
                                    ? Image.asset("assets/verticalmenu.png")
                                    : Image.asset("assets/Menu.png"),
                              ),
                            )
                          ],
                        ),
                        menuImage == index
                            ? SizedBox(
                                height: 418,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 0),
                                  child: GridView.builder(
                                      // physics: NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 1,
                                              mainAxisExtent: 177.0,
                                              crossAxisSpacing: 20.0,
                                              mainAxisSpacing: 20.0),
                                      itemCount: listOfVegieImage.length,
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        return Container(
                                          decoration: const BoxDecoration(
                                              color: Color(0xffF1F4F3),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 126,
                                                    width: 126,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 10),
                                                    child: Image.asset(
                                                        listOfVegieImage[
                                                            index]),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 25,
                                                        width: 110,
                                                        margin: const EdgeInsets
                                                                .only(
                                                            left: 10, top: 5),
                                                        child: Text(
                                                          listOfVegieText[
                                                              index],
                                                          style: GoogleFonts.raleway(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 20,
                                                              color: const Color(
                                                                  0xff194B38)),
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 18,
                                                            width: 45,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 20,
                                                                    top: 10),
                                                            child: Text(
                                                              listOfVegiePrice[
                                                                  index],
                                                              style: GoogleFonts.montserrat(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18,
                                                                  color: const Color(
                                                                      (0xff4CBB5E))),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 5,
                                                                    top: 15),
                                                            child: Text(
                                                              "/kg",
                                                              style: GoogleFonts.montserrat(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 11,
                                                                  color: const Color(
                                                                      (0xff777777))),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 95,
                                                            bottom: 40),
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: const Color(
                                                              0xffE9B1AF),
                                                        )),
                                                    child: Container(
                                                      width: 20,
                                                      height: 20,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 3,
                                                              right: 3),
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Color(0xffEC534A),
                                                      ),
                                                      child: const Icon(
                                                        Icons.favorite,
                                                        color: Colors.white,
                                                        size: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                  width: 53,
                                                  height: 41,
                                                  margin: const EdgeInsets.only(
                                                      left: 338, bottom: 0),
                                                  decoration:
                                                      const BoxDecoration(
                                                    gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xff26AD71),
                                                          Color(0xff32CB4B)
                                                        ]),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(20),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30)),
                                                  ),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  ProductPage(
                                                                    image: listOfVegieImage[
                                                                        index],
                                                                    title: listOfVegieText[
                                                                        index],
                                                                    star: listOfStar[
                                                                        index],
                                                                    price: listOfVegiePrice[
                                                                        index],
                                                                    starText:
                                                                        listOfStarVegieText[
                                                                            index],
                                                                    iconImage:
                                                                        listOfVegieIcon[
                                                                            index],
                                                                    iconText:
                                                                        listOfVegieIconText[
                                                                            index],
                                                                  )));
                                                    },
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              )
                            : SizedBox(
                                height: 418,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 0),
                                  child: GridView.builder(
                                      // physics: NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisExtent: 315.0,
                                              crossAxisSpacing: 20.0,
                                              mainAxisSpacing: 20.0),
                                      itemCount: listOfFruitsImage.length,
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        return Container(
                                          decoration: const BoxDecoration(
                                              color: Color(0xffF1F4F3),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                margin: const EdgeInsets.only(
                                                    left: 130, top: 20),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xffE9B1AF),
                                                    )),
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  margin: const EdgeInsets.only(
                                                      left: 3, right: 3),
                                                  decoration:
                                                      const BoxDecoration(
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
                                              Center(
                                                child: SizedBox(
                                                  height: 176,
                                                  child: Image.asset(
                                                      listOfVegieImage[index]),
                                                ),
                                              ),
                                              Container(
                                                height: 20,
                                                margin: const EdgeInsets.only(
                                                    left: 20, top: 11),
                                                child: Text(
                                                  listOfVegieText[index],
                                                  style: GoogleFonts.raleway(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 14,
                                                      color: const Color(
                                                          0xff194B38)),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 18,
                                                    width: 45,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 20, top: 10),
                                                    child: Text(
                                                      listOfVegiePrice[index],
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18,
                                                              color: const Color(
                                                                  (0xff4CBB5E))),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 0, top: 15),
                                                    child: Text(
                                                      "/kg",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 11,
                                                              color: const Color(
                                                                  (0xff777777))),
                                                    ),
                                                  ),
                                                  Container(
                                                      width: 53,
                                                      height: 41,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 48,
                                                              top: 17),
                                                      decoration:
                                                          const BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                                colors: [
                                                              Color(0xff26AD71),
                                                              Color(0xff32CB4B)
                                                            ]),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        30)),
                                                      ),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.of(context).push(
                                                              MaterialPageRoute(
                                                                  builder: (_) =>
                                                                      ProductPage(
                                                                        image: listOfVegieImage[
                                                                            index],
                                                                        title: listOfVegieText[
                                                                            index],
                                                                        star: listOfStar[
                                                                            index],
                                                                        price: listOfVegiePrice[
                                                                            index],
                                                                        starText:
                                                                            listOfStarVegieText[index],
                                                                        iconImage:
                                                                            listOfVegieIcon[index],
                                                                        iconText:
                                                                            listOfVegieIconText[index],
                                                                      )));
                                                        },
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                      )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              ),
                      ],
                    )
                  : index == 2
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 29,
                                  height: 29,
                                  padding:
                                      const EdgeInsets.only(left: 5, bottom: 3),
                                  margin:
                                      const EdgeInsets.only(left: 25, top: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffEBF4F1),
                                    // image: DecorationImage(
                                    //     image: AssetImage("assets/Icon.png")),
                                  ),
                                  child: const Center(child: Text("🍞")),
                                ),
                                SizedBox(
                                  width: 180,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 13),
                                      child: Text(
                                        "All Fresh Breads",
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                            color: const Color(0xff194B38)),
                                      )),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (menuImage == index) {
                                      menuImage = -1;
                                    } else {
                                      menuImage = index;
                                    }

                                    setState(() {});
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 160, top: 18),
                                    child: menuImage == index
                                        ? Image.asset("assets/verticalmenu.png")
                                        : Image.asset("assets/Menu.png"),
                                  ),
                                )
                              ],
                            ),
                            menuImage == index
                                ? SizedBox(
                                    height: 418,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 0),
                                      child: GridView.builder(
                                          // physics: NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 1,
                                                  mainAxisExtent: 177.0,
                                                  crossAxisSpacing: 20.0,
                                                  mainAxisSpacing: 20.0),
                                          itemCount: listOfVegieImage.length,
                                          itemBuilder:
                                              (BuildContext context, index) {
                                            return Container(
                                              decoration: const BoxDecoration(
                                                  color: Color(0xffF1F4F3),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30))),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 126,
                                                        width: 126,
                                                        margin: const EdgeInsets
                                                            .only(top: 10),
                                                        child: Image.asset(
                                                            listOfBreadImage[
                                                                index]),
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: 25,
                                                            width: 110,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    top: 5),
                                                            child: Text(
                                                              listOfBreadText[
                                                                  index],
                                                              style: GoogleFonts.raleway(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 20,
                                                                  color: const Color(
                                                                      0xff194B38)),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Container(
                                                                height: 18,
                                                                width: 45,
                                                                margin:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            20,
                                                                        top:
                                                                            10),
                                                                child: Text(
                                                                  listOfBreadPrice[
                                                                      index],
                                                                  style: GoogleFonts.montserrat(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          18,
                                                                      color: const Color(
                                                                          (0xff4CBB5E))),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left: 5,
                                                                        top:
                                                                            15),
                                                                child: Text(
                                                                  "/kg",
                                                                  style: GoogleFonts.montserrat(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          11,
                                                                      color: const Color(
                                                                          (0xff777777))),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Container(
                                                        width: 30,
                                                        height: 30,
                                                        margin: const EdgeInsets
                                                                .only(
                                                            left: 95,
                                                            bottom: 40),
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                border:
                                                                    Border.all(
                                                                  color: const Color(
                                                                      0xffE9B1AF),
                                                                )),
                                                        child: Container(
                                                          width: 20,
                                                          height: 20,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 3,
                                                                  right: 3),
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            color: Color(
                                                                0xffEC534A),
                                                          ),
                                                          child: const Icon(
                                                            Icons.favorite,
                                                            color: Colors.white,
                                                            size: 13,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                      width: 53,
                                                      height: 41,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 338,
                                                              bottom: 0),
                                                      decoration:
                                                          const BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                                colors: [
                                                              Color(0xff26AD71),
                                                              Color(0xff32CB4B)
                                                            ]),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        30)),
                                                      ),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.of(context).push(
                                                              MaterialPageRoute(
                                                                  builder: (_) =>
                                                                      ProductPage(
                                                                        image: listOfBreadImage[
                                                                            index],
                                                                        title: listOfBreadText[
                                                                            index],
                                                                        star: listOfStar[
                                                                            index],
                                                                        price: listOfBreadPrice[
                                                                            index],
                                                                        starText:
                                                                            listOfStarBreadText[index],
                                                                        iconImage:
                                                                            listOfBreadIcon[index],
                                                                        iconText:
                                                                            listOfBreadIconText[index],
                                                                      )));
                                                        },
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                      )),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  )
                                : SizedBox(
                                    height: 418,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 0),
                                      child: GridView.builder(
                                          // physics: NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  mainAxisExtent: 315.0,
                                                  crossAxisSpacing: 20.0,
                                                  mainAxisSpacing: 20.0),
                                          itemCount: listOfFruitsImage.length,
                                          itemBuilder:
                                              (BuildContext context, index) {
                                            return Container(
                                              decoration: const BoxDecoration(
                                                  color: Color(0xffF1F4F3),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30))),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 130, top: 20),
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: const Color(
                                                              0xffE9B1AF),
                                                        )),
                                                    child: Container(
                                                      width: 20,
                                                      height: 20,
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 3,
                                                              right: 3),
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Color(0xffEC534A),
                                                      ),
                                                      child: const Icon(
                                                        Icons.favorite,
                                                        color: Colors.white,
                                                        size: 13,
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: SizedBox(
                                                      height: 176,
                                                      child: Image.asset(
                                                          listOfBreadImage[
                                                              index]),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 20,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 20, top: 11),
                                                    child: Text(
                                                      listOfBreadText[index],
                                                      style: GoogleFonts.raleway(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 14,
                                                          color: const Color(
                                                              0xff194B38)),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 18,
                                                        width: 45,
                                                        margin: const EdgeInsets
                                                                .only(
                                                            left: 20, top: 10),
                                                        child: Text(
                                                          listOfBreadPrice[
                                                              index],
                                                          style: GoogleFonts.montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18,
                                                              color: const Color(
                                                                  (0xff4CBB5E))),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: const EdgeInsets
                                                                .only(
                                                            left: 0, top: 15),
                                                        child: Text(
                                                          "/kg",
                                                          style: GoogleFonts.montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 11,
                                                              color: const Color(
                                                                  (0xff777777))),
                                                        ),
                                                      ),
                                                      Container(
                                                          width: 53,
                                                          height: 41,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 48,
                                                                  top: 17),
                                                          decoration:
                                                              const BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                                    colors: [
                                                                  Color(
                                                                      0xff26AD71),
                                                                  Color(
                                                                      0xff32CB4B)
                                                                ]),
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        30)),
                                                          ),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              Navigator.of(context).push(
                                                                  MaterialPageRoute(
                                                                      builder: (_) =>
                                                                          ProductPage(
                                                                            image:
                                                                                listOfBreadImage[index],
                                                                            title:
                                                                                listOfBreadText[index],
                                                                            star:
                                                                                listOfStar[index],
                                                                            price:
                                                                                listOfBreadPrice[index],
                                                                            starText:
                                                                                listOfStarBreadText[index],
                                                                            iconImage:
                                                                                listOfBreadIcon[index],
                                                                            iconText:
                                                                                listOfBreadIconText[index],
                                                                          )));
                                                            },
                                                            child: const Icon(
                                                              Icons.add,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                          ],
                        )
                      : index == 3
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 29,
                                      height: 29,
                                      padding: const EdgeInsets.only(
                                          left: 5, bottom: 3),
                                      margin: const EdgeInsets.only(
                                          left: 25, top: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color(0xffEBF4F1),
                                        // image: DecorationImage(
                                        //     image: AssetImage("assets/Icon.png")),
                                      ),
                                      child: const Center(child: Text("🍖")),
                                    ),
                                    SizedBox(
                                      width: 180,
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 13),
                                          child: Text(
                                            "All Fresh Meats",
                                            style: GoogleFonts.raleway(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                                color: const Color(0xff194B38)),
                                          )),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        if (menuImage == index) {
                                          menuImage = -1;
                                        } else {
                                          menuImage = index;
                                        }

                                        setState(() {});
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 160, top: 18),
                                        child: menuImage == index
                                            ? Image.asset(
                                                "assets/verticalmenu.png")
                                            : Image.asset("assets/Menu.png"),
                                      ),
                                    )
                                  ],
                                ),
                                menuImage == index
                                    ? SizedBox(
                                        height: 418,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 0),
                                          child: GridView.builder(
                                              // physics: NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 1,
                                                      mainAxisExtent: 177.0,
                                                      crossAxisSpacing: 20.0,
                                                      mainAxisSpacing: 20.0),
                                              itemCount:
                                                  listOfVegieImage.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      index) {
                                                return Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xffF1F4F3),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          30))),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 126,
                                                            width: 126,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10),
                                                            child: Image.asset(
                                                                listOfMeatImage[
                                                                    index]),
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                height: 25,
                                                                width: 110,
                                                                margin:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10,
                                                                        top: 5),
                                                                child: Text(
                                                                  listOfMeatText[
                                                                      index],
                                                                  style: GoogleFonts.raleway(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      fontSize:
                                                                          20,
                                                                      color: const Color(
                                                                          0xff194B38)),
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    height: 18,
                                                                    width: 45,
                                                                    margin: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            20,
                                                                        top:
                                                                            10),
                                                                    child: Text(
                                                                      listOfMeatPrice[
                                                                          index],
                                                                      style: GoogleFonts.montserrat(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize:
                                                                              18,
                                                                          color:
                                                                              const Color((0xff4CBB5E))),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    margin: const EdgeInsets
                                                                            .only(
                                                                        left: 5,
                                                                        top:
                                                                            15),
                                                                    child: Text(
                                                                      "/kg",
                                                                      style: GoogleFonts.montserrat(
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              11,
                                                                          color:
                                                                              const Color((0xff777777))),
                                                                    ),
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 30,
                                                            height: 30,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 95,
                                                                    bottom: 40),
                                                            decoration:
                                                                BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0xffE9B1AF),
                                                                    )),
                                                            child: Container(
                                                              width: 20,
                                                              height: 20,
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 3,
                                                                      right: 3),
                                                              decoration:
                                                                  const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Color(
                                                                    0xffEC534A),
                                                              ),
                                                              child: const Icon(
                                                                Icons.favorite,
                                                                color: Colors
                                                                    .white,
                                                                size: 13,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                          width: 53,
                                                          height: 41,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 338,
                                                                  bottom: 0),
                                                          decoration:
                                                              const BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                                    colors: [
                                                                  Color(
                                                                      0xff26AD71),
                                                                  Color(
                                                                      0xff32CB4B)
                                                                ]),
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        30)),
                                                          ),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              Navigator.of(context).push(
                                                                  MaterialPageRoute(
                                                                      builder: (_) =>
                                                                          ProductPage(
                                                                            image:
                                                                                listOfMeatImage[index],
                                                                            title:
                                                                                listOfMeatText[index],
                                                                            star:
                                                                                listOfStar[index],
                                                                            price:
                                                                                listOfMeatPrice[index],
                                                                            starText:
                                                                                listOfStarMeatText[index],
                                                                            iconImage:
                                                                                listOfMeatIcon[index],
                                                                            iconText:
                                                                                listOfMeatIconText[index],
                                                                          )));
                                                            },
                                                            child: const Icon(
                                                              Icons.add,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          )),
                                                    ],
                                                  ),
                                                );
                                              }),
                                        ),
                                      )
                                    : SizedBox(
                                        height: 418,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 0),
                                          child: GridView.builder(
                                              // physics: NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 2,
                                                      mainAxisExtent: 315.0,
                                                      crossAxisSpacing: 20.0,
                                                      mainAxisSpacing: 20.0),
                                              itemCount:
                                                  listOfFruitsImage.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      index) {
                                                return Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xffF1F4F3),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          30))),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width: 30,
                                                        height: 30,
                                                        margin: const EdgeInsets
                                                                .only(
                                                            left: 130, top: 20),
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                border:
                                                                    Border.all(
                                                                  color: const Color(
                                                                      0xffE9B1AF),
                                                                )),
                                                        child: Container(
                                                          width: 20,
                                                          height: 20,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 3,
                                                                  right: 3),
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            color: Color(
                                                                0xffEC534A),
                                                          ),
                                                          child: const Icon(
                                                            Icons.favorite,
                                                            color: Colors.white,
                                                            size: 13,
                                                          ),
                                                        ),
                                                      ),
                                                      Center(
                                                        child: SizedBox(
                                                          height: 176,
                                                          child: Image.asset(
                                                              listOfMeatImage[
                                                                  index]),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 20,
                                                        margin: const EdgeInsets
                                                                .only(
                                                            left: 20, top: 11),
                                                        child: Text(
                                                          listOfMeatText[index],
                                                          style: GoogleFonts.raleway(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 14,
                                                              color: const Color(
                                                                  0xff194B38)),
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 18,
                                                            width: 45,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 20,
                                                                    top: 10),
                                                            child: Text(
                                                              listOfMeatPrice[
                                                                  index],
                                                              style: GoogleFonts.montserrat(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18,
                                                                  color: const Color(
                                                                      (0xff4CBB5E))),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 0,
                                                                    top: 15),
                                                            child: Text(
                                                              "/kg",
                                                              style: GoogleFonts.montserrat(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 11,
                                                                  color: const Color(
                                                                      (0xff777777))),
                                                            ),
                                                          ),
                                                          Container(
                                                              width: 53,
                                                              height: 41,
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 48,
                                                                      top: 17),
                                                              decoration:
                                                                  const BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                        colors: [
                                                                      Color(
                                                                          0xff26AD71),
                                                                      Color(
                                                                          0xff32CB4B)
                                                                    ]),
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            30)),
                                                              ),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .push(MaterialPageRoute(
                                                                          builder: (_) => ProductPage(
                                                                                image: listOfMeatImage[index],
                                                                                title: listOfMeatText[index],
                                                                                star: listOfStar[index],
                                                                                price: listOfMeatPrice[index],
                                                                                starText: listOfStarMeatText[index],
                                                                                iconImage: listOfMeatIcon[index],
                                                                                iconText: listOfMeatIconText[index],
                                                                              )));
                                                                },
                                                                child:
                                                                    const Icon(
                                                                  Icons.add,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              )),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }),
                                        ),
                                      ),
                              ],
                            )
                          : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
