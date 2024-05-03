import 'package:flutter/material.dart';
import '../widgets/{{name.snakeCase()}}_widget/{{name.snakeCase()}}_widget.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${{name.pascalCase()}} Screen")),
    );
  }
}