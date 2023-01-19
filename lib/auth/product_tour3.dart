import 'package:flutter/material.dart';
import 'package:my_first_portfolio/auth/login_page.dart';

class ProductTour3 extends StatelessWidget {
  const ProductTour3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F2F9),
      body: PageView(
        children: [
          Column(
            children: [
              Image.asset("assets/human.png"),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 175),
                        height: 4,
                        width: 6,
                        decoration: BoxDecoration(
                          color: const Color(0xff4CBB5E).withOpacity(0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(80)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 5),
                        height: 4,
                        width: 15,
                        decoration: BoxDecoration(
                          color: const Color(0xff4CBB5E).withOpacity(0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(80)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 5),
                        height: 4,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xff4CBB5E),
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 226,
                    height: 71,
                    margin: const EdgeInsets.only(top: 30),
                    child: const Center(
                        child: Text(
                      "Fast Shipment to your home!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                          color: Color(0xff194B38)),
                    )),
                  ),
                  Container(
                    width: 280,
                    height: 73,
                    margin: const EdgeInsets.only(top: 20),
                    child: const Center(
                        child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.6,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff9C9C9C)),
                    )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => const LoginPage()),
                          (route) => false);
                    },
                    child: Container(
                      width: 172,
                      height: 98,
                      margin: const EdgeInsets.only(top: 55),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          border: Border.all(
                            color: const Color(0xff2BAF6F).withOpacity(0.8),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 152,
                          height: 80,
                          padding: const EdgeInsets.only(top: 0),
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xff26AD71),
                                Color(0xff32CB4B)
                              ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: const Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
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
