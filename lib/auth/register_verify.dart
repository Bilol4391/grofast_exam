import 'package:flutter/material.dart';
import 'package:my_first_portfolio/auth/forgot_password.dart';
import 'package:my_first_portfolio/pages/mainpages/main_home_page.dart';
import 'package:my_first_portfolio/auth/term_condition.dart';

class RegisterVerify extends StatefulWidget {
  final String email;

  const RegisterVerify({Key? key, required this.email}) : super(key: key);

  @override
  State<RegisterVerify> createState() => _RegisterVerifyState();
}

class _RegisterVerifyState extends State<RegisterVerify> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isPasswordVisible = false;
  bool isEmailEmpty = false;
  bool isPasswordEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 60, left: 20),
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff777777)),
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.arrow_back_outlined,
                  color: Color(0xff777777),
                ),
              ),
            ),
            Container(
              width: 250,
              height: 70,
              margin: const EdgeInsets.only(left: 20, top: 50),
              child: const Text(
                "Verify your Identify",
                style: TextStyle(
                  color: Color(0xff194B38),
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 40,
                width: 340,
                child: Text(
                  "We have just sent a code to $widget.email",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff9C9C9C),
                    letterSpacing: .5,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xffF1F4F3),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  margin: const EdgeInsets.only(left: 45, top: 25),
                  child: const Center(
                      child: Text(
                    "1",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  )),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xffF1F4F3),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  margin: const EdgeInsets.only(left: 15, top: 25),
                  child: const Center(
                      child: Text(
                    "6",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  )),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xffF1F4F3),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  margin: const EdgeInsets.only(left: 15, top: 25),
                  child: const Center(
                      child: Text(
                    "1",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  )),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xffF1F4F3),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  margin: const EdgeInsets.only(left: 15, top: 25),
                  child: const Center(
                      child: Text(
                    "3",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: const [
                Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Didn’t receive the code?",
                      style: TextStyle(
                          fontSize: 14, color: Colors.grey, letterSpacing: .5),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Text(
                      "Resend code",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4CBB5E),
                          letterSpacing: .5),
                    )),
              ],
            ),
            GestureDetector(
              onTap: () {
                if (email.text.isNotEmpty && password.text.isNotEmpty) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ForgotPassword()));
                } else if (email.text.isEmpty && password.text.isEmpty) {
                  isEmailEmpty = true;
                  isPasswordEmpty = true;
                  setState(() {});
                } else if (email.text.isEmpty) {
                  isEmailEmpty = true;
                  setState(() {});
                } else if (password.text.isEmpty) {
                  isPasswordEmpty = true;
                  setState(() {});
                }
              },
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 450,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 30),
                                child: Image.asset("assets/Check.png"),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Success!",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff4B4B4B),
                                ),
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              const SizedBox(
                                height: 43,
                                width: 234,
                                child: Text(
                                  "You have successfully created your account.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff9C9C9C),
                                      height: 1.6),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (_) => const MainHomePage()),
                                      (route) => false);
                                },
                                child: Container(
                                  height: 70,
                                  width: 400,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff324A59),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xff32CB4B),
                                            Color(0xff26AD71)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)),
                                  margin: const EdgeInsets.only(
                                      left: 25, right: 25, top: 50),
                                  child: const Center(
                                      child: Text(
                                    "Browse home",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  height: 70,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Color(0xff324A59),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          colors: [Color(0xff32CB4B), Color(0xff26AD71)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  margin: const EdgeInsets.only(left: 25, right: 25, top: 50),
                  child: const Center(
                      child: Text(
                    "Vertification",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Center(
                child: Text(
              "By Signin up, you agree to our",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff9C9C9C)),
            )),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const TermCondition(),
                    ),
                  );
                },
                child: const Center(
                  child: Text(
                    "Term and Conditions",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4CBB5E),
                        letterSpacing: .5),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
