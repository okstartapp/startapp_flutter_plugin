import 'package:flutter/material.dart';
import 'package:startapp/startapp.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "StartApp Example",
        home: Scaffold(
            appBar: AppBar(title: const Text('StartApp Example')),
            body: Center(
                child: Column(
              children: <Widget>[
                Text('Banner sample'),

                // StartApp AdBanner as widget
                AdBanner(),

                // Display StartApp interstitial ad
                RaisedButton(
                    child: Text('Show interstitial ad'),
                    onPressed: () async {
                      await StartApp.showInterstitialAd();
                    }),

                // Display StartApp rewarded ad
                RaisedButton(
                    child: Text('Show rewarded ad'),
                    onPressed: () async {
                      await StartApp.showRewardedAd();
                    }),
              ],
            ))));
  }
}
