import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl=Uri.parse('https://moongbyeol.tistory.com/');

class HomeScreen extends StatelessWidget {
  WebViewController controller=WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('moonglog'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                // if(controller==null){
                //   return;
                // }
                controller.loadRequest(homeUrl);
              },
              icon: Icon(Icons.home)
          )
        ],
      ),
      body:
        WebViewWidget(
          controller: controller,
        )
        // WebView(
        //   onWebViewCreated: (WebViewController controller){
        //     this.controller=controller;
        //   },
        //   initialUrl: homeUrl,
        //   javascriptMode: JavascriptMode.unrestricted,//영상 URL 뜰 수 있도록
        // )
    );
  }
}
