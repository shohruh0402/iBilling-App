import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:contackt/sizeconfige/sizeconfig.dart';
import 'package:flutter/material.dart';

class ContaractPage extends StatelessWidget {
  const ContaractPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: he(26)),
          child: Column(
            children: [
              SizedBox(
                height: he(56),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: wi(20)),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/icons/Ellipse 13.png'),
                      ),
                      SizedBox(width: wi(12)),
                      Text(
                        'Contracts',
                        style: TextStyle(color: Colors.white, fontSize: wi(18)),
                      ),
                      SizedBox(width: wi(120)),
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
              ),
              SizedBox(
                height: he(149),
                width: double.infinity,
                child: Column(
                  children: [
                    CalendarAgenda(
                      backgroundColor: const Color(0xFF1E1E20),
                      initialDate: DateTime.now(),
                      firstDate:
                          DateTime.now().subtract(const Duration(days: 140)),
                      lastDate: DateTime.now().add(const Duration(days: 4)),
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
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Contracts'),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFF00A795),
                      fixedSize: Size(
                        wi(92),
                        he(33),
                      ),
                    ),
                  ),
                  SizedBox(width: wi(28)),
                  Text(
                    'Invoice',
                    style: TextStyle(color: Colors.white, fontSize: wi(15)),
                  ),
                ],
              ),
              SizedBox(
                height: he(20),
              ),
              for (var i = 0; i < 3; i++)
                Container(
                  margin: EdgeInsets.symmetric(vertical: he(12)),
                  height: he(148),
                  width: wi(343),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2A2A2D),
                      borderRadius: BorderRadius.all(Radius.circular(wi(6)))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('name')
                        ],
                      )
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
