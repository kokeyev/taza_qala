import 'package:flutter/material.dart';
import 'main.dart';


List<String> messages = <String>[
  "70% объема мусорного ведра в нашей квартире занимает упаковка от продуктов и товаров. При этом большая часть её пригодна для переработки или вторичного использования.",
  "На производство 1 бутылки тратится такое же количество энергии, как на переработку 10 таких же изделий.",
  "Вы сегодня сдали 15кг отхода! Поздравляем! Идите покорять вершины дальше!",
  "9 из 10 произведенных стеклянных бутылок в Финляндии перерабатываются или используются повторно.",
  "Поздравляем всех школьников с началом учебного года",
  "60 кг макулатуры, переданной на переработку, позволяют сохранить 1 дерево.",
  "Лишь 10% пакетов из полиэтилена поступают на повторную переработку. Остальное остается в земле или попадает в Мировой океан.",

];

List<String> dates = <String>[
  "вчера", "3 дня назад", "4 октября", "20 сентября", "1 сентября", "10 августа", "25 июля",
];


class Page4 extends StatelessWidget{
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            reverse: true,
            shrinkWrap: true,
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Card(
                        color: Colors.green,
                        child: Wrap(
                          alignment: WrapAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(messages[index], style: TextStyle(color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(dates[index], style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
            },
          ),
        )
      ],
    );
  }

}

