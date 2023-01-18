import 'package:flutter/material.dart';

class TermCondition extends StatefulWidget {
  const TermCondition({Key? key}) : super(key: key);

  @override
  State<TermCondition> createState() => _TermConditionState();
}

class _TermConditionState extends State<TermCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                margin: const EdgeInsets.only(top: 60, left: 50),
                child: const Text(
                  "Term and agreement",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4B4B4B),
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 30),
            child: const Text(
              "1. YOUR AGREEMENT",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Color(0xff4B4B4B),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: const Text(
              "By using this Site, you agree to be bound by, and to comply with, these Terms and Conditions. If you do not agree to these Terms and Conditions, please do not use this site.",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff9C9C9C),
                  height: 1.5),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: const Text(
              "PLEASE NOTE: We reserve the right, at our sole discretion, to provided solely as a convenience to our visitors provided solely as a convenience to our visitors provided solely as a convenience to our visitors provided solely change, modify or otherwise alter these Terms and Conditions at any time. Unless otherwise indicated, amendments will become effective immediately. Please review these Terms and Conditions periodically. Your continued use of the Site following the posting of changes and/or modifications will constitute your acceptance of the revised Terms and Conditions and the reasonableness of these standards for notice of changes. For your information, this page was last updated as of the date at the top of these terms and conditions.",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff9C9C9C),
                  height: 1.5),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 40),
            child: const Text(
              "2. PRIVACY",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Color(0xff4B4B4B),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: const Text(
              "Please review our Privacy Policy, which also governs your visit to this Site, to understand our practices. and you are the one who speak",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff9C9C9C),
                  height: 1.5),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 40),
            child: const Text(
              "3. LINKED SITES",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Color(0xff4B4B4B),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: const Text(
              "This Site may contain links to other provided solely as a convenience to our visitors independent third-party Web sites (Linked Sites). provided solely as a convenience to our visitors. ",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff9C9C9C),
                  height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
