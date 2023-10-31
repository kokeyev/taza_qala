import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';

class Page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://yandex.com/maps/?um=constructor%3A9e5d0c27c01da9424fbcca76af51907987f02b821c2424a76259418078bdd853&source=constructorLink',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

}