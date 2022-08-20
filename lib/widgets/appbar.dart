import 'package:flutter/material.dart';

AppBar appBarHome(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Image.asset(
      'assets/images/logo.png',
      width: MediaQuery.of(context).size.width * 0.4,
    ),
    actions: [
      ElevatedButton(
        onPressed: () {},
        child: Text(
          '길라잡이',
          style: TextStyle(
            fontSize: 45,
            color: Theme.of(context).focusColor,
            fontFamily: 'Dongle',
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).hoverColor,
        ),
      ),
    ],
  );
}

AppBar appBarList(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Image.asset(
      'assets/images/logo.png',
      width: MediaQuery.of(context).size.width * 0.4,
    ),
  );
}

AppBar appBarDetail(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Image.asset(
      'assets/images/logo.png',
      width: MediaQuery.of(context).size.width * 0.4,
    ),
    actions: [
      ElevatedButton(
        onPressed: () {},
        child: Text(
          '길라잡이',
          style: TextStyle(
            fontSize: 45,
            color: Theme.of(context).focusColor,
            fontFamily: 'Dongle',
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).hoverColor,
        ),
      ),
    ],
    iconTheme: IconThemeData(
      color: Theme.of(context).focusColor,
    ),
  );
}
