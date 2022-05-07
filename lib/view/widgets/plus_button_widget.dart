import '../../core/viewmodels/ruang_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlusButtonWidget extends StatelessWidget {
  const PlusButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RuangModel>(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            model.plus();
          },
          child: const Icon(
            Icons.zoom_in,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
