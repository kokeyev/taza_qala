import 'dart:io';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:taza_qala/Companies.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'Page1.dart';
import 'Page3.dart';
import 'Page4.dart';
import 'Page5.dart';


import 'Test.dart';
void main() {
  runApp(const MaterialApp(

    home: MyApp(),
  ));
}
late PageController _pageController;

int r = 8, g = 126, b = 49;


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {

    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }

    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int _currentIndex = 0;

  List<String> appbars = <String>[
    'Главная',
    'Категории',
    'Карта',
    'Чат',
    'Аккаунт',
  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text(appbars[_currentIndex]),backgroundColor: Colors.green,),
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              Page1(),
              Page2(),
              Page3(),
              const Page4(),
              Page5(),
              Companies(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          showElevation: true,
          selectedIndex: _currentIndex,
          onItemSelected: (index){
            setState(() {
              _pageController.jumpToPage(index);
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                activeColor: Color.fromRGBO(r, g, b, 1),
                inactiveColor: Colors.grey,
                icon: const Icon(Icons.home_outlined),
                title: const Text('Главная', style: TextStyle(color: Colors.green),),
            ),
            BottomNavyBarItem(
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
                icon: const Icon(Icons.category,),
                title: const Text('Категории', style: TextStyle(color: Colors.green,),),

            ),
            BottomNavyBarItem(
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                icon: const Icon(Icons.map),
                title: const Text('Карта', style: TextStyle(color: Colors.green,),)
            ),
            BottomNavyBarItem(
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                icon: const Icon(Icons.chat,),
                title: const Text('Чат', style: TextStyle(color: Colors.green,),)
            ),
            BottomNavyBarItem(
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                icon: const Icon(Icons.account_box_outlined),
                title: const Text('Аккаунт', style: TextStyle(color: Colors.green,),)
            ),
          ],
        ),
      ),
    );
  }
}

class PercentageProgressBar extends StatelessWidget {
  final double percent;

  PercentageProgressBar({required this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Set the desired width of the progress bar.
      height: 15, // Set the desired height of the progress bar.
      child: Stack(
        children: <Widget>[
          Container(
            width: 150,
            height: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Adjust the border radius to make the corners rounded.
              color: const Color.fromRGBO(221, 221, 221, 1), // Set the color for the unfinished part.
            ),
          ),
          Container(
            width: 200 * percent,
            height: 20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: Colors.green, // Set the color for the finished part.
            ),
          ),
        ],
      ),
    );
  }
}



class Page2 extends StatefulWidget{
  const Page2({Key? key}) : super(key: key);
  @override
  Page createState() => Page();
}

class Page extends State<Page2> {
  bool companies = false;

  @override
  Widget build(BuildContext context) {
    if (!companies) {
      return GridView.count(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              companies = true;
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
                height: 200,
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
            setState(() {
              companies = true;
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
            setState(() {
              companies = true;
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
            setState(() {
              companies = true;
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
            setState(() {
              companies = true;
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
            setState(() {
              companies = true;
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
            setState(() {
              companies = true;
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
            setState(() {
              companies = true;
            });
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
    ]);
    } else {
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
                    color: Colors.white,
                    height: 150,
                    child: Row(

                      children: <Widget>[
                        // icon, left side
                        Expanded(
                          flex: 8,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Container(
                                  color: Colors.white,
                                  child: Center(
                                    child: compnies[index],
                                  ),
                                ),
                              ),
                              Expanded(

                                flex: 2,
                                child: ratings[index],

                              ),
                            ],
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
                                                padding: const EdgeInsets.only(top: 5.0),
                                                child: Container(
                                                  color: Colors.white,
                                                  child: Center(
                                                    child: Text(names_companies[index], style: const TextStyle(
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
                                                padding: const EdgeInsets.only(top: 5.0),
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
                                                    height: 30,
                                                    child: Text("${costs[index]} тг / кг", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
                                                  ),

                                                ),
                                              ),
                                            ),

                                            // Second Column (80% of width)

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


List<Image> images = <Image>[
  const Image(image: AssetImage('images/turboCarton.png')),
  const Image(image: AssetImage('images/rookie.png')),
  const Image(image: AssetImage('images/metalCarrier.png')),
  const Image(image: AssetImage('images/electronicsKing.png')),
  const Image(image: AssetImage('images/lieutenantPlastic.png')),
];


List<Widget> ratings = <Widget>[
  Row(
    children: <Widget>[
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
    ],
  ),
  Row(
    children: <Widget>[
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_half_rounded),),
    ],
  ),
  Row(
    children: <Widget>[
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_half),),
      Expanded(flex: 1, child: Icon(Icons.star_border_outlined),),
    ],
  ),
  Row(
    children: <Widget>[
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_border_outlined),),
      Expanded(flex: 1, child: Icon(Icons.star_border_outlined),),
    ],
  ),
  Row(
    children: <Widget>[
      Expanded(flex: 1, child: Icon(Icons.star_rate_sharp),),
      Expanded(flex: 1, child: Icon(Icons.star_half),),
      Expanded(flex: 1, child: Icon(Icons.star_border_outlined),),
      Expanded(flex: 1, child: Icon(Icons.star_border_outlined),),
      Expanded(flex: 1, child: Icon(Icons.star_border_outlined),),
    ],
  ),
];
/*

 */
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
  "61",
  "50",
  "58",
  "69",
  "57",
];

List<Image> compnies = <Image>[
  const Image(image: AssetImage('images/rahat.png')),
  const Image(image: AssetImage('images/veka.png')),
  const Image(image: AssetImage('images/foodmaster.png')),
  const Image(image: AssetImage('images/tassay.png')),
  const Image(image: AssetImage('images/cola.png')),
];

List<String> names_companies = <String>[
  "Rakhat", "Veka", "Food Master", "Tassay", "Coca-Cola"
];