import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Column(
          children: const <Widget>[
            Text(
              'PESAN MAS ALI',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w900,
                fontSize: 14.0,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.blue,
            )
          ],
        ),
      ),
      backgroundColor: Colors.white38,
    );
  }
}
