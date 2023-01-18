import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/pages/MainHomePage.dart';
import 'package:my_first_portfolio/pages/SearchPage.dart';

class CategoryHorizontal extends StatefulWidget {
   const CategoryHorizontal({Key? key}) : super(key: key);

  @override
  State<CategoryHorizontal> createState() => _CategoryHorizontalState();
}

class _CategoryHorizontalState extends State<CategoryHorizontal> {
   List searchingItems =[];

  List listOfCategoriesImage = [
    "assets/fruits2.png",
    "assets/vegie2.png",
    "assets/bread2.png",
    "assets/meat2.png",
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

  List listOfCategoriesItemCount = [
    "112 items",
    "98 items",
    "58 items",
    "52 items",
    "112 items",
    "102 items",
  ];

  List listOfCategoriesColor = [
    const Color(0xffEBF4F1),
    const Color(0xffF3F3EA),
    const Color(0xffF3E9DD),
    const Color(0xffF8ECEC),
    const Color(0xffF8F5DE),
    const Color(0xffF9E9D2),
  ];

   int index = -1;

   int menuImage = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const MainHomePage()));
                }, child: Container(
                width: 80,
                height: 50,
                margin: const EdgeInsets.only(left: 20, top: 60),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    border: Border.all(color: const Color(0xff777777).withOpacity(0.2))
                ),
                child: const Icon(Icons.arrow_back, color: Color(0xff777777),),
              ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 73, left: 270),
                child: Image.asset("assets/bag.png"),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 295,
                margin: const EdgeInsets.only(top: 45, left: 20, right: 20),
                child: TextFormField(

                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: 0.7,
                      color: const Color(0xff194B38)),
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon:
                    const Icon(Icons.search_rounded, color: Color(0xff4CBB5E)),
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
                margin: const EdgeInsets.only(top: 40, left: 5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    color: const Color(0xff194B38).withOpacity(0.06),
                    image: const DecorationImage(
                      image:
                      AssetImage("assets/Group.png"),
                    )),
              ),
            ],
          ),

          Column(
                children: [
                Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 26, top: 30),
                    child: Text(
                      "All Categories",
                      style: GoogleFonts.raleway(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff194B38)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (menuImage == index) {
                        menuImage = 1;
                      } else {
                        menuImage = index;
                      }
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 210, top: 33),
                      child: menuImage == index
                          ? Image.asset("assets/Menu.png")
                          : Image.asset("assets/verticalmenu.png"),
                    ),
                  )
                ],
              ),

                menuImage == index
                  ? SizedBox(
                height: 664,
                child: Padding(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 3 / 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        maxCrossAxisExtent: 215,
                      ),
                      itemCount: listOfCategoriesImage.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SearchPage()));
                          },
                          child: Container(
                            // margin: EdgeInsets.only(left: 22, right: 22),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(40)),
                              color: listOfCategoriesColor[index],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 50, left: 70),
                                  child: Image.asset(listOfCategoriesImage[index]),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 25, top: 25),
                                  child: Text(listOfCategoriesText[index], style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: const Color(0xff194B38)),),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 25, top: 3),
                                  child: Text(listOfCategoriesItemCount[index], style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: const Color(0xff777777)),),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
                  : SizedBox(
                  height: 664,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22, right: 22, top: 10),
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          childAspectRatio: 3 / 1.3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          maxCrossAxisExtent: 415,
                        ),
                        itemCount: listOfCategoriesImage.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SearchPage()));
                            },
                            child: Container(
                              // margin: EdgeInsets.only(left: 22, right: 22),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(40)),
                                color: listOfCategoriesColor[index],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 30, left: 170),
                                    child: Image.asset(listOfCategoriesImage[index]),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 160, top: 15),
                                    child: Text(listOfCategoriesText[index], style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25,
                                        color: const Color(0xff194B38)),),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 167, top: 3),
                                    child: Text(listOfCategoriesItemCount[index], style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(0xff777777)),),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
