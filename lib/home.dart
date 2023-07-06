import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  final WebViewController _controller = WebViewController();


  final String url = 'https://staginggenius.leads.fr';
  @override
  void initState() {
    super.initState();

         _controller.setJavaScriptMode(JavaScriptMode.unrestricted);

        _controller.loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}

