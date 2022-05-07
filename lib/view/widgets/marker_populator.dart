import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:indoormap/core/models/models.dart';
import 'package:indoormap/view/widgets/popup_hover.dart';
import 'package:indoormap/view/widgets/popup_menu.dart';

class MarkerPopulator {
  static List<Widget> generateWidget(List<Ruang> listruang, size, context) {
    List<Widget> listMarker = [];
    for (var item in listruang) {
      listMarker.add(Transform.translate(
        offset: Offset(
          size.width > 1000
              ? 1000 * item.position[0]
              : size.width * item.position[0],
          size.width > 1000
              ? 1000 * item.position[1]
              : size.width * item.position[1],
        ),
        child: HoverWidget(
          hoverChild:
              PopHover().popUpWidget(context: context, modelruang: item),
          onHover: (value) {},
          child: InkWell(
            onTap: () {
              PopWidget().popUpWidget(context: context, modelruang: item);
            },
            child: const Icon(
              Icons.touch_app_sharp,
              size: 10,
            ),
          ),
        ),
      ));
    }
    return listMarker;
  }
}
