import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slackprofile/webviewScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("My Slack Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(
                  image: AssetImage("images/profileimage.jpg"),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Olorunshola Emmanuel',
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                Colors.black,
              )),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const WebViewPage(),
                  ),
                );
              },
              child: const Text(
                "Open Github",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
