import '/view/shared/global.dart';
import 'package:flutter/material.dart';

class OverlayWidget extends StatelessWidget {
  const OverlayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: Container(
        color: Global.white.withOpacity(0.85),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.touch_app,
                color: Colors.blue,
                size: 40.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Selamat Datang Di Mas ALI',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              ),
              Text(
                'Ketuk layar untuk memulai',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
