import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:sln_e_pay/app/constant/global.dart' as global;
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        gestureRecognizers: {
          Factory<VerticalDragGestureRecognizer>(
                  () => VerticalDragGestureRecognizer())},
        initialUrl: global.web_url,
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}
