import 'package:flutter/material.dart';

Container tableTitleWidget(TextStyle menustyle) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    height: 48,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Color(0xff00006A).withOpacity(0.2)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(width: 35, child: Text("Ref", style: menustyle)),
          Container(
            width: 80,
            child: Text(
              "Customer",
              style: menustyle,
            ),
          ),
          Container(
            width: 90,
            child: Text(
              "Delivery Date",
              style: menustyle,
            ),
          ),
          Container(
            width: 35,
            child: Text(
              "Detail",
              style: menustyle,
            ),
          )
        ],
      ),
    ),
  );
}

Expanded tableDataWidget(TextStyle menustyle) {
  return Expanded(
    child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(parent: BouncingScrollPhysics()),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 2),
            padding: EdgeInsets.all(10),
            height: 56,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.grey.withOpacity(0.4)))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 36, child: Text("#072", style: menustyle)),
                  Container(
                    width: 82,
                    child: Text(
                      "Rohit Sharma",
                      style: menustyle,
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Text(
                      "23rd Oct 2021",
                      overflow: TextOverflow.ellipsis,
                      style: menustyle,
                    ),
                  ),
                  Container(
                    width: 35,
                    child: Icon(Icons.visibility_outlined,
                        color: Color(0xff94BA4D)),
                  )
                ],
              ),
            ),
          );
        }),
  );
}
