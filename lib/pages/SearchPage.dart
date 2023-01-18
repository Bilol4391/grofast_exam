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
  bool isChanged = false;
  bool isLoading = true;
  FoodModel? infos;
  List<FoodModel?> products = [];

  Future<void> getInfors() async {
    isLoading = true;
    setState(() {});
    infos = await GetInfo.getInformation(text: 'pizza');
    print(infos?.hits?[0]?.recipe?.label ?? 'salom');
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getInfors();
    super.initState();
  }

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
          FutureBuilder(
            builder: (ctx, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If we got an error
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      '${snapshot.error} occurred',
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                } else if (snapshot.hasData) {
                  final data = snapshot.data as String;
                  return Center(
                    child: Text(
                      data,
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                }
              }
              return SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Text('salom');
                    }),
              );
            },
            future: getInfors(),
          ),
        ],
      ),
    );
  }
}
