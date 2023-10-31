import 'package:flutter/material.dart';
import 'package:taza_qala/Companies.dart';
import 'main.dart';



class Page2 extends StatefulWidget{
  const Page2({Key? key}) : super(key: key);
  @override
  Page createState() => Page();
}

class Page extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _pageController.jumpToPage(5);
            });
          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(r, g, b, 1),
                  borderRadius: BorderRadius.circular(10.0), // Make the container round
                ),
                height: 200, // Set the total height of the container
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0), // Radius for top-left corner
                          topRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(
                          child: Center(
                            child: categories[0],
                          ),
                        ),
                      ),

                    ),

                    // Second Row (60% of the height)
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0), // Radius for top-left corner
                          bottomRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(

                          color: Color.fromRGBO(r, g, b, 1),

                          child: Center(
                            child: Text(
                              "${c[0]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
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
        ),
        GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(r, g, b, 1),
                  borderRadius: BorderRadius.circular(10.0), // Make the container round
                ),
                height: 200, // Set the total height of the container
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0), // Radius for top-left corner
                          topRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(
                          child: Center(
                            child: categories[1],
                          ),
                        ),
                      ),

                    ),

                    // Second Row (60% of the height)
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0), // Radius for top-left corner
                          bottomRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(

                          color: Color.fromRGBO(r, g, b, 1),

                          child: Center(
                            child: Text(
                              "${c[1]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
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
        ),
        GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(r, g, b, 1),
                  borderRadius: BorderRadius.circular(10.0), // Make the container round
                ),
                height: 200, // Set the total height of the container
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0), // Radius for top-left corner
                          topRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(
                          child: Center(
                            child: categories[2],
                          ),
                        ),
                      ),

                    ),

                    // Second Row (60% of the height)
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0), // Radius for top-left corner
                          bottomRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(

                          color: Color.fromRGBO(r, g, b, 1),

                          child: Center(
                            child: Text(
                              "${c[2]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
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
        ),
        GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(r, g, b, 1),
                  borderRadius: BorderRadius.circular(10.0), // Make the container round
                ),
                height: 200, // Set the total height of the container
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0), // Radius for top-left corner
                          topRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(
                          child: Center(
                            child: categories[3],
                          ),
                        ),
                      ),

                    ),

                    // Second Row (60% of the height)
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0), // Radius for top-left corner
                          bottomRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(

                          color: Color.fromRGBO(r, g, b, 1),

                          child: Center(
                            child: Text(
                              "${c[3]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
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
        ),
        GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(r, g, b, 1),
                  borderRadius: BorderRadius.circular(10.0), // Make the container round
                ),
                height: 200, // Set the total height of the container
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0), // Radius for top-left corner
                          topRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(
                          child: Center(
                            child: categories[4],
                          ),
                        ),
                      ),

                    ),

                    // Second Row (60% of the height)
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0), // Radius for top-left corner
                          bottomRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(

                          color: Color.fromRGBO(r, g, b, 1),

                          child: Center(
                            child: Text(
                              "${c[4]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
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
        ),
        GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(r, g, b, 1),
                  borderRadius: BorderRadius.circular(10.0), // Make the container round
                ),
                height: 200, // Set the total height of the container
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0), // Radius for top-left corner
                          topRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(
                          child: Center(
                            child: categories[5],
                          ),
                        ),
                      ),

                    ),

                    // Second Row (60% of the height)
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0), // Radius for top-left corner
                          bottomRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(

                          color: Color.fromRGBO(r, g, b, 1),

                          child: Center(
                            child: Text(
                              "${c[5]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
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
        ),
        GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(r, g, b, 1),
                  borderRadius: BorderRadius.circular(10.0), // Make the container round
                ),
                height: 200, // Set the total height of the container
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0), // Radius for top-left corner
                          topRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(
                          child: Center(
                            child: categories[6],
                          ),
                        ),
                      ),

                    ),

                    // Second Row (60% of the height)
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0), // Radius for top-left corner
                          bottomRight: Radius.circular(20.0), // Radius for top-right corner
                        ),
                        child: Container(

                          color: Color.fromRGBO(r, g, b, 1),

                          child: Center(
                            child: Text(
                              "${c[6]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
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
        ),
        GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 200, // Set the total height of the container
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0), // Radius for top-left corner
                          topRight: Radius.circular(10.0), // Radius for top-right corner
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0), // Radius for top-left corner
                            bottomRight: Radius.circular(10.0), // Radius for top-right corner
                          ),

                          child: Container(
                            color: Color.fromRGBO(r, g, b, 1),
                            child: Center(
                              child: Text(
                                "${c[7]}...",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
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
        ),
      ],
    );
  }
}

List <String> c = <String>["Пластик", "Метал", "Стекло", "Картон", "Бумага", "Электроника", "Одежда", "Другое"];
List<Image> categories = <Image>[
  const Image(image: AssetImage('images/plastic.png')),
  const Image(image: AssetImage('images/metal.png')),
  const Image(image: AssetImage('images/glass.png')),
  const Image(image: AssetImage('images/carton.png')),
  const Image(image: AssetImage('images/paper.png')),
  const Image(image: AssetImage('images/battery.png')),
  const Image(image: AssetImage('images/clothing.png'))
];
// Image(image: AssetImage('images/1.jpg'))
