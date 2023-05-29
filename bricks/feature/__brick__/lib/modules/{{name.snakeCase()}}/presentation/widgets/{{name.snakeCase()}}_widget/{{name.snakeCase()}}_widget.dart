import 'package:flutter/material.dart';
import 'responsive/build_{{name.snakeCase()}}_desktop.dart';
import 'responsive/build_{{name.snakeCase()}}_mobile.dart';
import 'responsive/build_{{name.snakeCase()}}_tablet.dart';
import 'package:get/get.dart';

class {{name.pascalCase()}}Widget extends StatelessWidget {
  const {{name.pascalCase()}}Widget ({super.key});

  @override
  Widget build(BuildContext context) {
    return context.responsiveValue(
        desktop: Build{{name.pascalCase()}}Desktop(),
        tablet:Build{{name.pascalCase()}}Tablet(),
        mobile: Build{{name.pascalCase()}}Mobile(),
      );
  }
}