import 'package:contackt/components/widgets/container_widgets.dart';
import 'package:contackt/sizeconfige/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var _groupValue;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: he(26)),
          BarFor(
            text: 'profile',
            vis: false,
          ),
          Padding(
            padding: EdgeInsets.all(he(16)),
            child: Column(
              children: [
                Container(
                  height: he(188),
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
                                CircleAvatar(
                                  radius: he(25),
                                  backgroundColor: Color(0xFF00A795),
                                  child: Icon(
                                    Icons.person,
                                    size: he(37),
                                  ),
                                ),
                                SizedBox(width: wi(8)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Otabek Abdusamatov',
                                      style: TextStyle(
                                          color: Color(0xFF00A795),
                                          fontSize: wi(16),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: he(4)),
                                    Text(
                                      'Graphic designer • IQ Education',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: wi(12),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: he(22)),
                        Row(
                          children: [
                            myText('dateofbirth'),
                            SizedBox(
                              width: wi(7),
                            ),
                            myTextGreyy('16.09.2001')
                          ],
                        ),
                        SizedBox(height: he(12)),
                        Row(
                          children: [
                            myText('phonenumber'),
                            SizedBox(
                              width: wi(7),
                            ),
                            myTextGreyy('+998 97 721 06 88')
                          ],
                        ),
                        SizedBox(height: he(12)),
                        Row(
                          children: [
                            myText('email'),
                            SizedBox(
                              width: wi(7),
                            ),
                            myTextGreyy('predatorhunter041@gmail.com')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: he(12),
                ),
                Container(
                  height: he(44),
                  width: wi(343),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2A2A2D),
                      borderRadius: BorderRadius.all(Radius.circular(wi(6)))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: wi(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myText('language'),
                        GestureDetector(
                          child: CircleAvatar(
                            radius: he(14),
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                title: const Center(
                                  child: LocaleText('Choose a language'),
                                ),
                                content: StatefulBuilder(
                                  builder: (context, setState) => SizedBox(
                                    height: he(216),
                                    width: wi(327),
                                    child: Column(
                                      children: [
                                        RadioListTile(
                                            secondary: const Icon(Icons.check),
                                            value: 'uz',
                                            title: const Text('O‘zbek (Lotin)'),
                                            groupValue: _groupValue,
                                            onChanged: (v) {
                                              setState(() {
                                                _groupValue = v;
                                                Locales.change(context, 'uz');
                                              });
                                            }),
                                        RadioListTile(
                                            secondary: const Icon(Icons.check),
                                            value: 'en',
                                            title: const Text('English (USA)'),
                                            groupValue: _groupValue,
                                            onChanged: (v) {
                                              setState(() {
                                                _groupValue = v;
                                                Locales.change(context, 'en');
                                              });
                                            }),
                                        RadioListTile(
                                            secondary: const Icon(Icons.check),
                                            value: 'ru',
                                            title: const Text('Русский'),
                                            groupValue: _groupValue,
                                            onChanged: (v) {
                                              setState(() {
                                                _groupValue = v;
                                                Locales.change(context, 'ru');
                                              });
                                            }),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Cancel'),
                                              style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFF00A795),
                                                fixedSize: Size(
                                                  wi(92),
                                                  he(33),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: wi(20),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Done'),
                                              style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFF00A795),
                                                fixedSize: Size(
                                                  wi(92),
                                                  he(33),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
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
