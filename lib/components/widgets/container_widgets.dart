import 'package:contackt/sizeconfige/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: he(12)),
      height: he(148),
      width: wi(343),
      decoration: BoxDecoration(
          color: const Color(0xFF2A2A2D),
          borderRadius: BorderRadius.all(Radius.circular(wi(6)))),
      child: Padding(
        padding: EdgeInsets.all(he(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/Paper.png',
                      width: wi(18),
                      height: he(18),
                    ),
                    SizedBox(width: wi(8)),
                    Text(
                      '№ 154',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: wi(14),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: he(24),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(73, 183, 165, 0.15),
                      borderRadius: BorderRadius.all(Radius.circular(wi(6)))),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(5)),
                      child: const LocaleText(
                        'paid',
                        style: TextStyle(
                          color: Color(0xFF49B7A5),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: he(14)),
            Row(
              children: [
                myText('fish'),
                SizedBox(
                  width: wi(7),
                ),
                myTextGreyy('text')
              ],
            ),
            SizedBox(height: he(4)),
            Row(
              children: [
                myText('amount'),
                SizedBox(
                  width: wi(7),
                ),
                myTextGreyy('text')
              ],
            ),
            SizedBox(height: he(4)),
            Row(
              children: [
                myText('lastinvoice'),
                SizedBox(
                  width: wi(7),
                ),
                myTextGreyy('text')
              ],
            ),
            Row(
              children: [
                myText('numberofinvoice'),
                SizedBox(height: he(4)),
                SizedBox(
                  width: wi(7),
                ),
                myTextGreyy('text'),
                const Expanded(
                  child: SizedBox(),
                ),
                myTextGreyy('31.01.2021')
              ],
            ),
          ],
        ),
      ),
    );
  }

  Text myText(String text) {
    return LocaleText(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: wi(14),
      ),
    );
  }

  Text myTextGreyy(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: wi(14),
      ),
    );
  }
}

class BarFor extends StatelessWidget {
  String text;
  bool vis;
  BarFor({Key? key, this.text = '', this.vis = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF141416),
      height: he(56),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(20)),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/icons/Ellipse 13.png'),
            ),
            SizedBox(width: wi(12)),
            LocaleText(
              text,
              style: TextStyle(color: Colors.white, fontSize: wi(18)),
            ),
            const Expanded(child: SizedBox()),
            Expanded(
              child: Visibility(
                visible: vis,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/Filter.png',
                      height: he(20),
                      width: wi(20),
                    ),
                    SizedBox(width: wi(21)),
                    Text(
                      '|',
                      style: TextStyle(color: Colors.white, fontSize: wi(21)),
                    ),
                    SizedBox(width: wi(21)),
                    Image.asset(
                      'assets/icons/zoom-2 1.png',
                      height: he(20),
                      width: wi(20),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
