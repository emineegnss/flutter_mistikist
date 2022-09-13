import 'package:flutter/material.dart';
import 'package:flutter_mistikist/widgets/category_widget.dart';
import 'package:flutter_mistikist/widgets/nav_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../const.dart';

class Mistikist extends StatefulWidget {
  const Mistikist({Key? key}) : super(key: key);

  @override
  State<Mistikist> createState() => _MistikistState();
}

int current = 0;

class _MistikistState extends State<Mistikist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("mistikist",
              style: GoogleFonts.alfaSlabOne(textStyle: TextStyle(fontSize: 24, color: Color(0xffCECECE)))),
          actions: [
            Row(
              children: [
                IconMetod(AntIcons.filterOutlined),
                IconMetod(AntIcons.searchOutlined),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                      //child: Image.asset("assets/Screenshot_2.jpg"),

                      backgroundImage: AssetImage("assets/Screenshot_2.jpg")),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ],
        ),
        body: current == 0
            ? ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Text("Recommended",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 21,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 330,
                    child: ListView.builder(
                        padding: EdgeInsets.only(left: 16),
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: Mistik.mistik.length,
                        itemExtent: 320,
                        itemBuilder: (context, index) {
                          final e = Mistik.mistik[index];
                          return Container(
                            margin: const EdgeInsets.only(right: 16, top: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff787878),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 180,
                                  width: 355,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      e.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      e.title,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w400, fontSize: 17, color: Color(0xffCECECE))),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 7),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      e.subtitle,
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w300, fontSize: 13, color: Color(0xff979797))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 36, left: 20, right: 20),
                    child: Column(children: [
                      SizedBox(
                        width: 340,
                        child: Text(
                          "Category",
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.w500, fontSize: 21, color: Color(0xffCECECE))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: Categoryy.category
                              .map((e) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Category(
                                    category: e,
                                  )))
                              .toList(),
                        ),
                      ),
                    ]),
                  )
                ],
              )
            : current == 1
                ? Text("1")
                : current == 2
                    ? Text("2")
                    : Text("3"),
        extendBody: true,
        bottomNavigationBar: Container(
          height: 75,
          margin: EdgeInsets.all(32),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavButton(
                      isSelected: current == 0,
                      icon: FeatherIcons.disc,
                      onPressed: () {
                        setState(() {
                          current = 0;
                        });
                      }),
                  NavButton(
                      isSelected: current == 1,
                      icon: FeatherIcons.heart,
                      onPressed: () {
                        setState(() {
                          current = 1;
                        });
                      }),
                  NavButton(
                      isSelected: current == 2,
                      icon: FeatherIcons.loader,
                      onPressed: () {
                        setState(() {
                          current = 2;
                        });
                      }),
                  NavButton(
                      isSelected: current == 3,
                      icon: FeatherIcons.fileText,
                      onPressed: () {
                        setState(() {
                          current = 3;
                        });
                      }),
                ],
              ),
            ),
          ),
        ));
  }

  IconButton IconMetod(IconData iconn) {
    return IconButton(
      icon: Icon(
        iconn,
        color: Color(0xfff373737),
      ),
      onPressed: () {},
    );
  }
}
  /*child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/premium2.jpg",
                    ),
                    child: CircleAvatar(
                      maxRadius: 97,
                      backgroundColor: Color(0xff1E1E1E),
                    ))*/