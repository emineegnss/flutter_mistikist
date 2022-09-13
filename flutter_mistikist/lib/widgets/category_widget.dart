import 'package:flutter/material.dart';
import 'package:flutter_mistikist/models/mistik_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  const Category({Key? key, required this.category}) : super(key: key);
  final CategoryModel category;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: const Color(0xff787878),
              ),
              borderRadius: BorderRadius.circular(16)),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Icon(Icons.remove_red_eye_outlined),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xff787878),
                  ),
                  color: Color(0xff161616)),
            ),
            title: Text(
              widget.category.title,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 17, color: Color(0xffCECECE))),
            ),
            subtitle: Text(
              widget.category.subtitle,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xff979797))),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
        ));
  }
}
