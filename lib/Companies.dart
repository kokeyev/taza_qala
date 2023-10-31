import 'package:flutter/material.dart';
import 'main.dart';

List<Image> images = <Image>[
  const Image(image: AssetImage('images/turboCarton.png')),
  const Image(image: AssetImage('images/rookie.png')),
  const Image(image: AssetImage('images/metalCarrier.png')),
  const Image(image: AssetImage('images/electronicsKing.png')),
  const Image(image: AssetImage('images/lieutenantPlastic.png')),
];

List<String> names = <String>[
  "Abdi",
  "Matrica",
  "Альт Пласт",
  "Алеана",
  "Материя Пластика",
];

List<String> numbers = <String>[
  "+77001234567",
  "+77017418523",
  "+77077894561",
  "+77059631245",
  "+77001237890",
];

List<String> costs = <String>[
  "50",
  "40",
  "60",
  "55",
  "45",
];


class Companies extends StatelessWidget{
  const Companies({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
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
                                  Container(
                                    color: Colors.white,
                                    child: Center(
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                            // название компании
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Container(
                                                color: Colors.black,
                                                child: Center(
                                                  child: Text(names[index], style: const TextStyle(
                                                    fontWeight: FontWeight.bold, // Set the font weight to bold
                                                    fontSize: 20.0,
                                                  ),),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            // номер телефона
                                            flex: 4, // 60% of the available height
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 10.0),
                                              child: Container(
                                                color: Colors.white,
                                                child: Center(
                                                  child: Text(numbers[index], style: const TextStyle(
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
                                  )
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

