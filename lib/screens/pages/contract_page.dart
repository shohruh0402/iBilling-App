import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:contackt/components/widgets/container_widgets.dart';
import 'package:contackt/sizeconfige/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ContaractPage extends StatefulWidget {
  const ContaractPage({Key? key}) : super(key: key);

  @override
  State<ContaractPage> createState() => _ContaractPageState();
}

class _ContaractPageState extends State<ContaractPage> {
  int item = 3;
  bool vis = false;

  // ignore: prefer_final_fields
  RefreshController _controller = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SmartRefresher(
        physics: const BouncingScrollPhysics(),
        enablePullUp: true,
        enablePullDown: false,
        controller: _controller,
        onLoading: () async {
          await Future.delayed(const Duration(milliseconds: 1000));
          _controller.loadComplete();
          setState(() {
            vis == true ? vis = false : vis = true;
          });
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(top: he(26)),
            child: Column(
              children: [
                BarFor(
                  text: 'contracts',
                ),
                SizedBox(
                  height: he(149),
                  width: double.infinity,
                  child: Column(
                    children: [
                      CalendarAgenda(
                        backgroundColor: const Color(0xFF1E1E20),
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 30)),
                        onDateSelected: (date) {
                          // ignore: avoid_print
                          print(date);
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(height: he(32)),
                Row(
                  children: [
                    SizedBox(width: wi(16)),
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const LocaleText('contracts'),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: const Color(0xFF00A795),
                        ),
                      ),
                    ),
                    SizedBox(width: wi(28)),
                    LocaleText(
                      'invoice',
                      style: TextStyle(color: Colors.white, fontSize: wi(15)),
                    ),
                  ],
                ),
                SizedBox(
                  height: he(20),
                ),
                for (var i = 0; i < item; i++) const InfoContainer(),
                Visibility(
                  visible: vis,
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          item += 1;
                        });
                      },
                      child: const LocaleText('more'),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xFF00A795),
                        
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
