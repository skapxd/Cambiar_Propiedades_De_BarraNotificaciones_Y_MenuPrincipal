
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:newapp/src/models/new_services.dart';
import 'package:newapp/src/theme/theme.dart';
import 'package:provider/provider.dart';

import 'src/pages/tabs_page.dart';

// d13a9b2d2d3d4c4ab9b0f3417c57889e News Api
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewServices() ),
      ],

      // AnnotatedRegion<SystemUiOverlayStyle> puede cambiar las propiedades del la barra de notificaciones.
      // con statusBarColor: Colors(...) podras darle color a la barra de notificaciones.
      // link de la documentacion para cambiar las propiedades 
      // https://api.flutter.dev/flutter/services/SystemUiOverlayStyle-class.html
      // 
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Color.fromRGBO(255, 255, 255, 0),
          // statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Color.fromRGBO(50, 50, 50, 1),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: TabsPage(),
          theme: miTema,
        ),
      ),
    );
  }
}