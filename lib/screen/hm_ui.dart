import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class NeworderPage extends StatelessWidget {
  const NeworderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle menustyle =
        GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image(
                height: 65,
                image: NetworkImage(
                    'https://www.himelectronics.com/MediaThumb/large/Media/4257_him_1.jpg')),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              margin: EdgeInsets.all(10),
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Delivery List',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Color(0xff00006A),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 16,
                          ),
                          Text(
                            "Search",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color(0xff00006A).withOpacity(0.2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Ref", style: menustyle),
                Text(
                  "Customer",
                  style: menustyle,
                ),
                Text(
                  "Order",
                  style: menustyle,
                ),
                Text(
                  "Detail",
                  style: menustyle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 2),
                    padding: EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.withOpacity(0.4)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("#072", style: menustyle),
                        Text(
                          "Rohit Sharma",
                          style: menustyle,
                        ),
                        Text(
                          "Himstar 32\' TV",
                          style: menustyle,
                        ),
                        Icon(Icons.visibility_outlined,
                            color: Color(0xff94BA4D)),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
