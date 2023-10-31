import 'package:flutter/material.dart';
import 'main.dart';

List<Image> images = <Image>[
  const Image(image: AssetImage('images/turboCarton.png')),
  const Image(image: AssetImage('images/rookie.png')),
  const Image(image: AssetImage('images/metalCarrier.png')),
  const Image(image: AssetImage('images/electronicsKing.png')),
  const Image(image: AssetImage('images/lieutenantPlastic.png')),
  const Image(image: AssetImage('images/bestofthebest.png')),
];

List<String> scores = <String>[
  "70", "54", "22", "10", "0", "0"
];

List<String> titles = <String>[
  "TURBO CARTON", "ROOKIE", "METAL CARRIER", "ELECTRONICS KING", "LIEUTENANT PLASTIC", "BEST OF THE BEST"
];

List<String> descriptions = <String>[
"Собери 2 кг картона за день",
  "Сдай 1 кг любого материала",
  "Собери 10 кг металла",
  "Собери 1 кг электроники",
  "Собери 5 кг пластика",
  "Сдай 100 кг всего",
];

class Page1 extends StatelessWidget{
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
                                                    child: Text(titles[index], style: const TextStyle(
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
                                                    child: Text(descriptions[index], style: const TextStyle(
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
                                                    child: PercentageProgressBar(
                                                      percent: int.parse(scores[index]) / 100.0, // Change this value to set the progress percentage.
                                                    ),
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
                                                  child: Text("${scores[index]}%",
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
        )
      ],
    );
  }
}

