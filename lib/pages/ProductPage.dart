import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/pages/addToBag.dart';

class ProductPage extends StatefulWidget {
  final String image;
  final String title;
  final String star;
  final String starText;
  final String iconImage;
  final String iconText;
  final String price;
  const ProductPage({Key? key, required this.image, required this.title, required this.star, required this.price, required this.starText, required this.iconImage, required this.iconText}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  int buyCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: const Color(0xffC4C4C4).withOpacity(.3),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 80,
                    height: 50,
                    margin: const EdgeInsets.only(left: 20, top: 60),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                        border: Border.all(
                            color: const Color(0xff777777).withOpacity(0.2))),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xff777777),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 275,  top: 65),
                  child: Image.asset("assets/bag.png"),
                ),
              ],
            ),
          ),
          Container(
            height: 430,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffC4C4C4).withOpacity(.3),
            ),
            child: Column(
              children: [
                Container(
                    height: 250,
                  width: 250,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover)
                  ),
                ),
                Image.asset("assets/Shadow_2.png"),
                Container(
                  width: 62,
                  height: 62,
                  margin: const EdgeInsets.only(
                      left: 322, bottom: 0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xffE9B1AF),
                      )),
                  child: Container(
                    width: 30,
                    height: 30,
                    margin: const EdgeInsets.only(
                        left: 5, right: 5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffEC534A),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ),
              ],
            )
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 22, top: 20),
                width: 30,
                height: 20,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/car.png"),),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, top: 22),
                child: Text("Free shipping", style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 13, color: const Color(0xff4CBB5E)),),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 22, top: 12),
            child: Text(widget.title, style: GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 28, color: const Color(0xff194B38)),),
          ),
          Row(
            children: [
              Container(
                width: 67,
                height: 32,
                margin: const EdgeInsets.only(left: 20, top: 15),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  border: Border.all(color: const Color(0xffE4E2E2)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 15),
                      child: Image.asset(widget.star),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                        child: Center(child: Text(widget.starText, style: GoogleFonts.montserrat(fontSize: 10, fontWeight: FontWeight.w500, color: const Color(0xff777777)),)),
                    ),
                  ],
                ),
              ),
              Container(
                width: 90,
                height: 32,
                margin: const EdgeInsets.only(left: 8, top: 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Color(0xffEBF4F1),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 3, left: 20),
                      child: Text(widget.iconImage),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Center(child: Text(widget.iconText, style: GoogleFonts.montserrat(fontSize: 10, fontWeight: FontWeight.w500, color: const Color(0xff777777)),)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 140, top: 15),
                child: Text(widget.price, style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 24, color: const Color(0xff4CBB5E)),),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, top: 25),
                child: Text("/kg", style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 10, color: const Color(0xff777777)),),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 33),
            child: Text("Describtion", style: GoogleFonts.raleway(fontSize: 22, fontWeight: FontWeight.w700, color: const Color(0xff194B38)),),
          ),
          Container(
            width: 400,
            height: 71,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco laboris nisi ut.",
            style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 15, color: const Color(0xff9C9C9C), letterSpacing: 0.5, height: 1.5), maxLines: 3, overflow: TextOverflow.ellipsis,),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  if(buyCount != 0){
                    buyCount --;
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
                  child: const Center(child: Text("-", style: TextStyle(color: Color(0xff4CBB5E), fontSize: 20),)),
                ),
              ),
              SizedBox(
                  height: 50,
                  width: 50,
                  child: Padding( padding: const EdgeInsets.only(left: 15, top: 25), child: Text("$buyCount", style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 20, color: const Color(0xff777777)),))
              ),
              GestureDetector(
                onTap: (){
                  buyCount ++;
                  setState(() {
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(left: 5, top: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffF1F4F3),
                  ),
                  child: const Center(child: Text("+", style: TextStyle(color: Color(0xff4CBB5E), fontSize: 20),)),
                ),
              ),
              GestureDetector(
                onTap: (){
                  if (buyCount != 0){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const AddToBag()));
                    setState(() {

                    });
                  }
                },
                child: Container(
                  width: 200,
                  height: 82,
                  margin: const EdgeInsets.only(left: 75, top: 18),
                  decoration: BoxDecoration(
                    gradient: buyCount > 0 ? const LinearGradient(colors: [Color(0xff26AD71), Color(0xff32CB4B)], begin: Alignment.bottomLeft, end: Alignment.topRight) : LinearGradient(colors: [const Color(0xff26AD71).withOpacity(0.3), const Color(0xff32CB4B).withOpacity(0.3)], begin: Alignment.bottomLeft, end: Alignment.topRight),
                    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(50), topLeft: Radius.circular(30)),
                  ),
                  child: Center(child: Text("Add to bag", style: GoogleFonts.raleway(fontSize: 15, fontWeight: FontWeight.w600, color: const Color(0xffFFFFFF), letterSpacing: 0.5),)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
