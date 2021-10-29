import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyorderSection extends StatelessWidget {
  const VerifyorderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        // height: 200,
        // width: 360,

        decoration: BoxDecoration(
            color: Color(0xff333A6E), borderRadius: BorderRadius.only()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Verify Order',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
            Container(
              margin: EdgeInsets.all(28),
              child: Wrap(
                spacing: 10,
                children: [
                  Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  ),
                  Text('Code is sent to 98490866547',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 40, left: 40, top: 10),
              child: Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 18,

                children: [
                  Container(
                    width: 46,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white),
                  ),
                  Container(
                    width: 46,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white),
                  ),
                  Container(
                    width: 46,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white),
                  ),
                  Container(
                    width: 46,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text('Didn\'t receibe code?',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
            SizedBox(
              height: 10,
            ),
            Text('Request again',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Color(0xff85B034),
              ),
              child: Text('Verify Code',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )),
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    );
  }
}
