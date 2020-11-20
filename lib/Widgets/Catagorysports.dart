import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CatagorySports extends StatelessWidget {
  final String imgpath;
  final String name;
  final Function ontap;

  const CatagorySports({Key key, this.imgpath, this.name, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Image.asset(
                "assets/${imgpath}",
                height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
