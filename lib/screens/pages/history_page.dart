import 'package:contackt/components/widgets/container_widgets.dart';
import 'package:contackt/sizeconfige/sizeconfig.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

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
                text: 'History',
              ),
              Padding(
                padding: EdgeInsets.all(he(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: he(4)),
                    Text(
                      'Date',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: wi(14),
                      ),
                    ),
                    SizedBox(height: he(16)),
                    Row(
                      children: [
                        Container(
                          width: wi(116),
                          height: he(37),
                          decoration: BoxDecoration(
                              color: Color(0xFF2A2A2D),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(wi(6)))),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: wi(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    '16.02.2021',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: wi(5),
                                  ),
                                  Image.asset(
                                    'assets/icons/Calendar.png',
                                    height: he(16),
                                    width: wi(16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //!
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: he(12)),
                          child: const Text(
                            '--',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: wi(116),
                          height: he(37),
                          decoration: BoxDecoration(
                              color: Color(0xFF2A2A2D),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(wi(6)))),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: wi(5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'To',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: wi(55),
                                  ),
                                  Image.asset(
                                    'assets/icons/Calendar.png',
                                    height: he(16),
                                    width: wi(16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: he(20),
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
