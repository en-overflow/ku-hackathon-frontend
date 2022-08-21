import 'package:flutter/material.dart';

appBarHome(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(80.0),
    child: AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 30,
      ),
      backgroundColor: Color(0xfffff4cb),
      elevation: 3,
      flexibleSpace: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            SizedBox(width: 110),
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.4,
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                '길라잡이',
                style: TextStyle(
                  fontSize: 40,
                  color: Theme.of(context).focusColor,
                  fontFamily: 'Dongle',
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).hoverColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              ),
            ),
          ],
        ),
      ),
      // title: Image.asset(
      //   'assets/images/logo.png',
      //   width: MediaQuery.of(context).size.width * 0.4,
      // ),
      // actions: [
      //   ElevatedButton(
      //     onPressed: () {},
      //     child: Text(
      //       '길라잡이',
      //       style: TextStyle(
      //         fontSize: 35,
      //         color: Theme.of(context).focusColor,
      //         fontFamily: 'Dongle',
      //       ),
      //     ),
      //     style: ElevatedButton.styleFrom(
      //       primary: Theme.of(context).hoverColor,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //       ),
      //       padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      //     ),
      //   ),
      // ],
    ),
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
    iconTheme: IconThemeData(
      color: Theme.of(context).focusColor,
    ),
  );
}
