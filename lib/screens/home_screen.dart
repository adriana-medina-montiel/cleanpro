import 'package:cleanpro/screens/about_screen.dart';
import 'package:cleanpro/screens/admin_screen.dart';
import 'package:cleanpro/screens/notifications_screen.dart';
import 'package:cleanpro/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/restroom.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 34, 33, 33).withOpacity(0.2), // Ajusta el nivel de opacidad aquí
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: Colors.white.withOpacity(0.5), // Color de fondo blanco con transparencia
                    child: ListTile(
                      title: Text(
                        'sobre nosotros',
                        style: Apptheme.darkTheme.textTheme.bodySmall,
                      ),
                      subtitle: Text(
                        'Sobre nosotros',
                        maxLines: 2, // Limita el número máximo de líneas del subtitle
                        overflow: TextOverflow.ellipsis, // Trunca el texto si excede el máximo de líneas
                        style: Apptheme.darkTheme.textTheme.bodySmall,
                      ),
                      leading: IconTheme(
                        data: Apptheme.darkTheme.iconTheme,
                        child: const Icon(Icons.input),
                      ),
                      trailing: IconTheme(
                        data: Apptheme.darkTheme.iconTheme,
                        child: const Icon(Icons.arrow_circle_right_rounded),
                      ),
                      onTap: () {
                        final ruta1 = MaterialPageRoute(builder: (context) {
                          return const AboutScreen();
                        });
                        Navigator.push(context, ruta1);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: Colors.white.withOpacity(0.5), // Color de fondo blanco con transparencia
                    child: ListTile(
                      title: Text(
                        'Notificaciones',
                        style: Apptheme.darkTheme.textTheme.headlineLarge,
                      ),
                      subtitle: Text(
                        'Mostrar una notificación',
                        maxLines: 2, // Limita el número máximo de líneas del subtitle
                        overflow: TextOverflow.ellipsis, // Trunca el texto si excede el máximo de líneas
                        style: Apptheme.darkTheme.textTheme.bodySmall,
                      ),
                      leading: IconTheme(
                        data: Apptheme.darkTheme.iconTheme,
                        child: const Icon(Icons.input),
                      ),
                      trailing: IconTheme(
                        data: Apptheme.darkTheme.iconTheme,
                        child: const Icon(Icons.arrow_circle_right_rounded),
                      ),
                      onTap: () {
                        final ruta1 = MaterialPageRoute(builder: (context) {
                          return const NotificationsScreen();
                        });
                        Navigator.push(context, ruta1);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: Colors.white.withOpacity(0.5), // Color de fondo blanco con transparencia
                    child: ListTile(
                      title: Text(
                        'Administrador',
                        style: Apptheme.darkTheme.textTheme.headlineLarge,
                      ),
                      subtitle: Text(
                        'Acceder al boton',
                        maxLines: 2, // Limita el número máximo de líneas del subtitle
                        overflow: TextOverflow.ellipsis, // Trunca el texto si excede el máximo de líneas
                        style: Apptheme.darkTheme.textTheme.bodySmall,
                      ),
                      leading: IconTheme(
                        data: Apptheme.darkTheme.iconTheme,
                        child: const Icon(Icons.input),
                      ),
                      trailing: IconTheme(
                        data: Apptheme.darkTheme.iconTheme,
                        child: const Icon(Icons.arrow_circle_right_rounded),
                      ),
                      onTap: () {
                        final ruta1 = MaterialPageRoute(builder: (context) {
                          return const AdminScreen();
                        });
                        Navigator.push(context, ruta1);
                      },
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
