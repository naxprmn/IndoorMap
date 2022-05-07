import 'package:flutter/material.dart';
import 'package:indoormap/core/models/models.dart';
import 'package:indoormap/view/shared/global.dart';

class PopWidget {
  popUpWidget({required context, required Ruang modelruang}) {
    return showDialog(
      context: context,
      builder: (context) {
        Size size = MediaQuery.of(context).size;
        return Dialog(
          backgroundColor: Global.boxColor,
          insetPadding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: size.height / 1.5,
            width: size.width / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            modelruang.photo,
                          ),
                          maxRadius: 30,
                          minRadius: 20,
                        ),
                        Text(
                          modelruang.name,
                          overflow: TextOverflow.visible,
                        ),
                        Text(
                          modelruang.title,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(modelruang.location,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis)),
                      SizedBox(
                        width: size.width * 0.3,
                        height: size.height * 0.3,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset(modelruang.locationphoto)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
