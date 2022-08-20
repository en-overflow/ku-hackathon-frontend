import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class ClassAddScreen extends StatelessWidget {
  static const routeName = '/class-add';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDetail(context),
      body: Container(
        child: Column(
          children: [
            SizedBox(),
            Text('강좌 등록'),
          ],
        ),
      ),
    );
  }
}
