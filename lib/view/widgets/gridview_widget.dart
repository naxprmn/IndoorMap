import 'package:indoormap/view/widgets/marker_populator.dart';
import '/core/models/models.dart';
import '../../core/viewmodels/ruang_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // print("HEIGHT : ${size.height}");
    // print("WIDTH : ${size.width}");
    final model = Provider.of<RuangModel>(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(
          maxHeight: 1000, maxWidth: 1000, minHeight: 530, minWidth: 500),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 0.0,
          //crossAxisSpacing: 2.0,
          //mainAxisSpacing: 2.0,
          crossAxisCount: 5,
        ),
        itemCount: 25,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          List<Ruang> ruangan =
              model.ruang.where((item) => item.tile == index).toList();
          List<Widget> marker =
              MarkerPopulator.generateWidget(ruangan, size, context);

          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                'assets/$index.png',
              ),
              // model.isScaled == false
              ...marker
              // : CircleAvatar(
              //     backgroundColor: Colors.white,
              //     child: Text(
              //       '${index}',
              //       style: TextStyle(
              //         color: Global.blue,
              //       ),
              //     ),
              //   ),
            ],
          );
        },
      ),
    );
  }
}
