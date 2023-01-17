import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountPage extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final String percent;
  final Color listOfColor;
   const DiscountPage({Key? key, required this.image, required this.title, required this.text, required this.percent, required this.listOfColor}) : super(key: key);

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
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
              Padding(padding: const EdgeInsets.only(left: 65, top: 50),child: Text("Coupon Detail", style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 12, color: const Color(0xff4B4B4B)),))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                height: 85,
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: Text("New Member Discount", style: GoogleFonts.raleway(fontWeight: FontWeight.w700, height: 1.3, fontSize: 28, color: const Color(0xff194B38)),),
              ),
              Container(
                margin: const EdgeInsets.only(top: 80, left: 100),
                child: Text("08/20/2021", style: GoogleFonts.montserrat(fontWeight: FontWeight.w400, fontSize: 14, color: const Color(0xff9C9C9C)),),
              ),
            ],
          ),
          Container(
            width: 450,
            height: 180,
            margin: const EdgeInsets.only(left: 22, right: 22, top: 25),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 50),
                  child: Text(title, style: GoogleFonts.raleway(fontWeight: FontWeight.w800, color: listOfColor, fontSize: 17, letterSpacing: 0.7),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 3),
                  child: Text(text, style: GoogleFonts.raleway(fontWeight: FontWeight.w500, color: listOfColor, fontSize: 12, letterSpacing: 0.7),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 3),
                  child: Text(percent, style: GoogleFonts.montserrat(fontWeight: FontWeight.w800, color: listOfColor, fontSize: 30, letterSpacing: 0.7),),
                ),
              ],
            ),
          ),
          const SizedBox(height: 33,),
          Padding(padding: const EdgeInsets.only(left: 26) ,child: Text("Details", style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 16, color: const Color(0xff4B4B4B)),)),
          const SizedBox(height: 12,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 26) ,child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco laboris nisi ut.", style: GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xff9C9C9C), letterSpacing: 0.5, height: 1.6),)),
          const SizedBox(height: 20,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 26) ,child: Text("elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco laboris nisi ut.", style: GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xff9C9C9C), letterSpacing: 0.5, height: 1.6),)),
          const SizedBox(height: 35,),
          Padding(padding: const EdgeInsets.only(left: 26) ,child: Text("How to use", style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 16, color: const Color(0xff4B4B4B)),)),
          const SizedBox(height: 15,),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 44, top: 6),
                child: const Icon(Icons.circle, color: Color(0xff9C9C9C), size: 5,),
              ),
              Padding(padding: const EdgeInsets.only(left: 8) ,child: Text("Lorem ipsum are dolor sit amet, are adipisicing", style: GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xff9C9C9C), letterSpacing: 0.5, height: 1.6),)),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 44, top: 6),
                child: const Icon(Icons.circle, color: Color(0xff9C9C9C), size: 5,),
              ),
              Padding(padding: const EdgeInsets.only(left: 8) ,child: Text("sed do eiusmod tempor incididunt ut labore", style: GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xff9C9C9C), letterSpacing: 0.5, height: 1.6),)),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 44, top: 6),
                child: const Icon(Icons.circle, color: Color(0xff9C9C9C), size: 5,),
              ),
              Padding(padding: const EdgeInsets.only(left: 8) ,child: Text("Ut enim ad minim veniam", style: GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xff9C9C9C), letterSpacing: 0.5, height: 1.6),)),
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              width: 400,
              height: 65,
              margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 30),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                gradient: LinearGradient(colors: [Color(0xff26AD71), Color(0xff32CB4B)]),
              ),
              child: Center(child: Text("Claim Coupon", style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 16,color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
