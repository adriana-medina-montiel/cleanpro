import 'package:cleanpro/screens/about_screen.dart';
import 'package:cleanpro/screens/home_screen.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool switchValue = false; // controlar el widget switch
    double sliderValue = 0.0;
    int radioSelected = 0;
    bool isChecked1 = false;
    bool isChecked2 = false;
    bool isChecked3 = false;
    int indexNavigation = 0;

    openScreen(int index, BuildContext context) {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());

      switch (index) {
        case 0:
          ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1:
          ruta = MaterialPageRoute(
              builder: (context) => const NotificationsScreen());
          break;
        case 2:
          ruta = MaterialPageRoute(builder: (context) => const AboutScreen());
          break;
      }
      setState(() {
        indexNavigation = index;
        Navigator.push(context, ruta);
      });
    }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Estado de los Baños',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color.fromARGB(255, 104, 129, 150),
        ),
        home: BathroomStatusScreen(),
      );
    }
  }

  class BathroomStatusScreen extends StatefulWidget {
    @override
    _BathroomStatusScreenState createState() => _BathroomStatusScreenState();
  }

  class _BathroomStatusScreenState extends State<BathroomStatusScreen> {
    List<Bathroom> bathrooms = [
      Bathroom(name: "Edificio P", occupied: true),
      Bathroom(name: "Biblioteca", occupied: false),
      Bathroom(name: "Edificio C", occupied: true),
    ];

    @override
    Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Estado de los Baños'),
        backgroundColor: Color.fromARGB(255, 8, 8, 8),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: DataTable(
            columns: const [
              DataColumn(
                label: Text(
                  'Nombre',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Estado',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
            rows: bathrooms.map((bathroom) {
              return DataRow(cells: [
                DataCell(
                  Text(
                    bathroom.name,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    bathroom.occupied ? 'Ocupado' : 'Disponible',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: bathroom.occupied ? Colors.red : Colors.green,
                    ),
                  ),
                ),
              ]);
            }).toList(),
          ),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 1, 7, 12),
          selectedItemColor: const Color.fromARGB(255, 11, 11, 11),
          unselectedItemColor: Color.fromARGB(255, 207, 200, 200),
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_add), label: 'Notificaciones'),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Imágenes'),
          ],
        ),
      );
    }
  }

  class Bathroom {
    final String name;
    final bool occupied;

    Bathroom({required this.name, required this.occupied});
  }
