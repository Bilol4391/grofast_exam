import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/Widget/network_image.dart';
import 'package:my_first_portfolio/model/food_model.dart';
import 'package:my_first_portfolio/pages/addToBag.dart';

class ProductPage extends StatefulWidget {
  final FoodModel? info;
  final int index;
  const ProductPage({
    Key? key,
    this.index = 0,
    required this.info,
  }) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int buyCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              CustomImageNetwork(
                  height: 500,
                  width: double.infinity,
                  image: widget.info!.hits![widget.index]!.recipe!.image!),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    margin: const EdgeInsets.only(left: 20, top: 60),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        border: Border.all(
                          color: const Color(0xff26AD71),
                        ),
                        color: const Color(0xff26AD71).withOpacity(0.3)),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 22, top: 20),
                  width: 30,
                  height: 20,
                  child: const Icon(Icons.shopping_bag)),
              Container(
                margin: const EdgeInsets.only(left: 5, top: 22),
                child: Text(
                  "Free shipping",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: const Color(0xff4CBB5E)),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 22, top: 12),
            child: Text(
              widget.info!.hits![widget.index]!.recipe!.label!,
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: const Color(0xff194B38)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              "Describtion",
              style: GoogleFonts.raleway(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff194B38)),
            ),
          ),
          Container(
            width: 400,
            height: 71,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco laboris nisi ut.",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: const Color(0xff9C9C9C),
                  letterSpacing: 0.5,
                  height: 1.5),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (buyCount != 0) {
                    buyCount--;
                    setState(() {});
                  }
                },
                child: Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffF1F4F3),
                  ),
                  child: const Center(
                      child: Text(
                    "-",
                    style: TextStyle(color: Color(0xff4CBB5E), fontSize: 20),
                  )),
                ),
              ),
              SizedBox(
                  height: 50,
                  width: 50,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Text(
                        "$buyCount",
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: const Color(0xff777777)),
                      ))),
              GestureDetector(
                onTap: () {
                  buyCount++;
                  setState(() {});
                },
                child: Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(left: 5, top: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffF1F4F3),
                  ),
                  child: const Center(
                      child: Text(
                    "+",
                    style: TextStyle(color: Color(0xff4CBB5E), fontSize: 20),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (buyCount != 0) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const AddToBag()));
                    setState(() {});
                  }
                },
                child: Container(
                  width: 200,
                  height: 82,
                  margin: const EdgeInsets.only(left: 75, top: 18),
                  decoration: BoxDecoration(
                    gradient: buyCount > 0
                        ? const LinearGradient(
                            colors: [Color(0xff26AD71), Color(0xff32CB4B)],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight)
                        : LinearGradient(
                            colors: [
                                const Color(0xff26AD71).withOpacity(0.3),
                                const Color(0xff32CB4B).withOpacity(0.3)
                              ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Center(
                      child: Text(
                    "Add to bag",
                    style: GoogleFonts.raleway(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFFFFFF),
                        letterSpacing: 0.5),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
