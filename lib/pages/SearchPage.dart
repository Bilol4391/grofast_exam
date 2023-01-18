import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/model/food_model.dart';
import 'package:my_first_portfolio/pages/MainHomePage.dart';
import 'package:my_first_portfolio/pages/ProductPage.dart';

import 'package:my_first_portfolio/repository/get_info.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // bool isChanged = false;
  // bool isLoading = true;
  // FoodModel? infos;
  // List<FoodModel?> products = [];

  // Future<void> getInfors() async {
  //   isLoading = true;
  //   infos = await GetInfo.getInformation(text: 'pizza');
  //   print("\n\n\n\nHELLOOOOO $infos\n\n\n\n");
  //   isLoading = false;
  // }
  String change = "";
  bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MainHomePage(),
                    ),
                  );
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
                    change = value;
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
          FutureBuilder(
            future: GetInfo.getInformation(text: change),
            builder: (ctx, AsyncSnapshot<FoodModel?> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              } else if (snapshot.data?.count == 0) {
                return Column(
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 200),
                        height: 75,
                        width: 75,
                        decoration: const BoxDecoration(
                          color: Color(0xffEBF4F1),
                          borderRadius: BorderRadius.all(Radius.circular(23)),
                        ),
                        child: Center(
                            child: Text(
                          "🤷🏻‍♂",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w700, fontSize: 30),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                        child: Text(
                      "No this type of product",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                          color: const Color(0xff194B38),
                          letterSpacing: 0.3),
                    )),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "Search and see more items.",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color(0xff9C9C9C),
                            letterSpacing: 0.3),
                      ),
                    ),
                  ],
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                      itemCount: snapshot.data?.hits?.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (a) => ProductPage(
                                        info: snapshot.data,
                                        index: index,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 120,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF1F4F3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24))),
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 15),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(24)),
                                          child: Image.network(
                                            snapshot.data!.hits![index]!.recipe!
                                                .image!,
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 200,
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              left: 30, top: 22),
                                          child: Text(
                                            snapshot.data?.hits?[index]?.recipe
                                                    ?.label ??
                                                '',
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.raleway(
                                                color: const Color(0xff194B38),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
