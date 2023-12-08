import 'package:flutter/material.dart';
import 'package:my_flutter/my_flutter.dart';

class ExampleRootPage extends StatefulWidget {
  const ExampleRootPage({super.key});

  @override
  State<ExampleRootPage> createState() => _ExampleRootPageState();
}

class _ExampleRootPageState extends State<ExampleRootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('示例列表'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            RouterUtil.to(ChildPage(title: '示例详情页 - ${index + 1}'));
          },
          title: Text('列表 - ${index + 1}'),
        ),
      ),
    );
  }
}
