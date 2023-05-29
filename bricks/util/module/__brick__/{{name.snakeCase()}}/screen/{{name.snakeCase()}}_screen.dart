import 'package:flutter/material.dart';

class {{name.pascalCase()}} extends StatelessWidget {
  const {{name.pascalCase()}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('{{name.pascalCase()}}'),
    ));
  }
}
