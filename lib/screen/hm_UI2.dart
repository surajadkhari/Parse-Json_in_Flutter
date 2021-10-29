import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parse_json_flutter/components/pendingorder_section.dart';
import 'package:parse_json_flutter/components/verify_order.dart';

class NewUI extends StatelessWidget {
  const NewUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
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
            child: const Image(
                height: 65,
                image: NetworkImage(
                    'https://www.himelectronics.com/MediaThumb/large/Media/4257_him_1.jpg')),
          ),
          const SizedBox(
            height: 30,
          ),
          VerifyorderSection(
            
          ),
          Container(
              margin: EdgeInsets.all(10),
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pending Order',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400)),
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
          tableTitleWidget(menustyle),
          // SizedBox(
          //   height: 400,
          //   child:

          tableDataWidget(menustyle),

          // )
        ],
      ),
    );
  }
}
