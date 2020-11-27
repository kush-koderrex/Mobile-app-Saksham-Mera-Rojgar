import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
                5.0),
            child: AppBar(
              title:Center(child: Text('',
                textAlign: TextAlign.center,
              style:TextStyle(
                fontFamily:'Pacifico',
                  color: Colors.orange,
              ),
              ),
              ),
              backgroundColor: Colors.blue,
            ),
          ),
            body: WebViewLoad()
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}
class WebViewLoad extends StatefulWidget {
  WebViewLoadUI createState() => WebViewLoadUI();
}
class WebViewLoadUI extends State<WebViewLoad>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
          initialUrl: 'https://sakshamapp.org/',
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}