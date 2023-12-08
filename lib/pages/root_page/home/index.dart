import 'package:flutter/material.dart';
import 'package:my_flutter/my_flutter.dart';

class HomeRootPage extends StatefulWidget {
  const HomeRootPage({super.key});

  @override
  State<HomeRootPage> createState() => _HomeRootPageState();
}

class _HomeRootPageState extends State<HomeRootPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text('count: $count'),
            ),
            ElevatedButton(
              onPressed: () {
                RouterUtil.to(
                  const WebviewPage(url: 'https://main.m.taobao.com'),
                  transition: PageTransitionType.rightToLeft,
                );
              },
              child: const Text('淘宝'),
            ),
            ElevatedButton(
              onPressed: () {
                RouterUtil.to(
                  const WebviewPage(
                    url: 'https://www.bing.com',
                    enableNavIntercept: true,
                  ),
                  transition: PageTransitionType.fade,
                );
              },
              child: const Text('Bing搜索'),
            ),
          ],
        ),
      ),
    );
  }
}
