import 'dart:io';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:taza_qala/Companies.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  @override
  State<Test> createState() => _MyTestPage();
}

class _MyTestPage extends State<Test> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    child: Row(
                      children: <Widget>[
                        // icon, left side
                        Expanded(
                          flex: 7, // 20% of the available space
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: images[index],
                            ),
                          ),
                        ),
                        // info, right side
                        Expanded(
                          flex: 13, // 80% of the available space
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  // First Row (40% of the height)
                                  Expanded(
                                    flex: 7, // 40% of the available height
                                    child: Container(
                                      color: Colors.white,
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            // First Row (40% of the height)
                                            Expanded(
                                              flex: 4, // 40% of the available height
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 20.0),
                                                child: Container(
                                                  color: Colors.white,
                                                  child: Center(
                                                    child: Text("A", style: const TextStyle(
                                                      fontWeight: FontWeight.bold, // Set the font weight to bold
                                                      fontSize: 20.0,
                                                    ),),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            // Second Row (60% of the height)
                                            Expanded(
                                              flex: 6, // 60% of the available height
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 10.0),
                                                child: Container(
                                                  color: Colors.white,
                                                  child: Center(
                                                    child: Text("B", style: const TextStyle(
                                                      fontStyle: FontStyle.italic,
                                                      fontSize: 14.0,
                                                    ),),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  // Second Row (60% of the height)
                                  Expanded(
                                    flex: 3, // 60% of the available height
                                    child: Container(
                                      color: Colors.white,
                                      child: Center(
                                        child: Row(
                                          children: <Widget>[
                                            // First Column (20% of width)
                                            Expanded(
                                              flex: 7, // 20% of the available space
                                              child: Container(
                                                color: Colors.white,
                                                child: Center(
                                                  child: Container(
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.black, width: 0.5), // Border properties
                                                      borderRadius: BorderRadius.circular(10.0), // Border radius for rounded corners
                                                    ),
                                                    child: Text("C"),
                                                  ),

                                                ),
                                              ),
                                            ),

                                            // Second Column (80% of width)
                                            Expanded(
                                              flex: 3, // 80% of the available space
                                              child: Container(
                                                color: Colors.white,
                                                child: Center(
                                                  child: Text("D",
                                                    style: const TextStyle(
                                                      fontWeight: FontWeight.bold, // Set the font weight to bold
                                                      fontSize: 20.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            },
          ),
        ),
        // Cards that can be tapped

        // Expanded card that covers the entire screen when tapp
      ],
    );
  }

}

class CardWidget extends StatelessWidget {
  final int cardNumber;

  CardWidget({required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 150.0,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Card $cardNumber',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}