import 'package:flutter/material.dart';
import 'package:my_flutter/my_flutter.dart';

class TemplateRootPage extends StatefulWidget {
  const TemplateRootPage({super.key});

  @override
  State<TemplateRootPage> createState() => _TemplateRootPageState();
}

class _TemplateRootPageState extends State<TemplateRootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('模版列表'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text('列表 - ${index + 1}'),
        ),
      ),
    );
  }
}
