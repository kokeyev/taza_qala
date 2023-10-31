import 'package:flutter/material.dart';
import 'main.dart';

class Page5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        children:<Widget> [
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              child: Card(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.account_box_outlined),
                      const SizedBox(width: 10,),
                      const Text('Личные данные'),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: const Icon(Icons.arrow_forward_rounded,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 80,
              child: Card(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.map),
                      const SizedBox(width: 10,),
                      const Text('Пункты приемов'),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: const Icon(Icons.arrow_forward_rounded,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              height: 80,
              child: Card(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.history_outlined),
                      const SizedBox(width: 10,),
                      const Text('История заказов'),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: const Icon(Icons.arrow_forward_rounded,),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ),
          Expanded(flex: 1, child: Container(
            height: 80,
            child: Card(
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    const Icon(Icons.language),
                    const SizedBox(width: 10,),
                    const Text('Язык'),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_forward_rounded,),
                    ),
                  ],
                ),
              ),
            ),
          ),),
          Expanded(flex: 1, child: Container(
            height: 80,
            child: Card(
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    const Icon(Icons.info_sharp),
                    const SizedBox(width: 10,),
                    const Text('О приложении'),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(Icons.arrow_forward_rounded,),
                    ),
                  ],
                ),
              ),
            ),
          ),),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50), // This creates a round container
            ),
              width: 300,
              height: 80,

              child: Center(
                child: Text('Заказать', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
        ],
      ),
    );
  }

}