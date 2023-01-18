import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/Widget/PastCanceled.dart';
import 'package:my_first_portfolio/Widget/pastContainer.dart';
import 'package:my_first_portfolio/Widget/nowContainer.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
              Padding(
                  padding: const EdgeInsets.only(left: 65, top: 50),
                  child: Text(
                    "Notification",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff4B4B4B)),
                  ))
            ],
          ),
          Container(
            width: 435,
            margin: const EdgeInsets.only(top: 25, left: 35, right: 35),
            child: TextFormField(
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 0.7,
                  color: const Color(0xff194B38)),
              decoration: InputDecoration(
                filled: true,
                suffixIcon: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Icon(Icons.search_rounded,
                        color: Color(0xff4CBB5E))),
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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 20.0),
                DefaultTabController(
                  length: 4, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Center(
                          child: TabBar(
                            isScrollable: true,
                            indicator: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xff2AAF7F)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                                color: const Color(0xffEBF4F1)),
                            labelColor: const Color(0xff2AAF7F),
                            labelStyle: const TextStyle(
                                fontSize: 15, color: Color(0xff777777)),
                            unselectedLabelColor: Colors.black,
                            tabs: const [
                              Tab(
                                text: 'All',
                              ),
                              Tab(text: 'On Delivery'),
                              Tab(text: 'Delivered'),
                              Tab(text: 'Canceled'),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: 660, //height of TabBarView
                            child: TabBarView(children: <Widget>[
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    NewContainerWidget.nowContainer(),
                                    PastContainerWidget.pastContainer(),
                                    PastCanceledWidget.pastCanceledContainer(),
                                  ],
                                ),
                              ),
                              NewContainerWidget.nowContainer(),
                              PastContainerWidget.pastContainer(),
                              PastCanceledWidget.pastCanceledContainer(),
                            ]))
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
