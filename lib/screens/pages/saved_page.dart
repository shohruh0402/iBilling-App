import 'package:contackt/components/widgets/container_widgets.dart';
import 'package:contackt/sizeconfige/sizeconfig.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: he(26)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BarFor(
                text: 'Saved',
              ),
              Padding(
                padding: EdgeInsets.all(he(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: he(4),
                    ),
                    for (var i = 0; i < 5; i++) const InfoContainer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
