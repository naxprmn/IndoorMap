import 'package:indoormap/view/widgets/minus_button_widget.dart';
import 'package:indoormap/view/widgets/plus_button_widget.dart';

import '../../core/viewmodels/ruang_model.dart';
import '/view/widgets/appbar_widget.dart';
import '/view/widgets/gridview_widget.dart';
import '/view/widgets/overlay_widget.dart';
import '/view/widgets/raw_gesture_detector_widget.dart';
import '/view/widgets/reset_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RuangModel>(context);
    double size = MediaQuery.of(context).size.height / 13;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size),
        child: const AppBarWidget(),
      ),
      body: Center(
        child: Container(
          color: Colors.blue.shade300,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              const RawGestureDetectorWidget(
                child: GridViewWidget(),
              ),
              model.hasTouched
                  ? Row(children: const [
                      ResetButtonWidget(),
                      MinusButtonWidget(),
                      PlusButtonWidget(),
                    ])
                  : const OverlayWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
