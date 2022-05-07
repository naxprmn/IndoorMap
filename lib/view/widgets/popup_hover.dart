import 'package:flutter/material.dart';
import 'package:indoormap/core/models/models.dart';
import 'package:indoormap/view/shared/global.dart';
import 'package:indoormap/view/widgets/popup_menu.dart';

class PopHover {
  popUpWidget({required context, required Ruang modelruang}) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        PopWidget().popUpWidget(context: context, modelruang: modelruang);
      },
      child: Container(
        color: Global.boxColor,
        height: size.height / 3,
        width: size.width / 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                modelruang.photo,
              ),
            ),
            Expanded(
              child: Text(modelruang.name, overflow: TextOverflow.visible),
            ),
          ]),
        ),
      ),
    );
  }
}
