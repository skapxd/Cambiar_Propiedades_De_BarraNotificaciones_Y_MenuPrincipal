import 'package:flutter/material.dart';
import 'package:newapp/src/models/new_services.dart';
import 'package:provider/provider.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _NavegacionModel(),
      child: Scaffold(
        
        body: _Paginas(),
        bottomNavigationBar: _Navegacion(),
      ),
    );
  }
}

class _Navegacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final navegacionModel = Provider.of<_NavegacionModel>(context);
    final newServices = Provider.of<NewServices>(context);

    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(50, 50, 50, 1),
      currentIndex: navegacionModel.paginaActual,
      onTap: (_) => navegacionModel.paginaActual = _,
      items: [
        BottomNavigationBarItem(
          icon: Icon( Icons.person_outline),
          title: Text('Para ti')
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.public),
          title: Text('Encabezados')
        ),
      ]
    );
  }
}

class _Paginas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final navegacionModel = Provider.of<_NavegacionModel>(context);
    return PageView(
      controller: navegacionModel.pageController,
      // physics: BouncingScrollPhysics(),
      // physics: ClampingScrollPhysics(),
      // physics: FixedExtentScrollPhysics(),
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[

        Container(
          color: Colors.red,
        ),
        
        Container(
          color: Colors.green,
        )
      ],
    );
  }
}

class _NavegacionModel with ChangeNotifier{

  int _paginaActual = 0;
  PageController _pageController = new PageController();

  get paginaActual => _paginaActual;

  set paginaActual(int value){

    this._paginaActual = value;

    _pageController.animateToPage(value, duration: Duration(milliseconds: 350), curve: Curves.easeInOut);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
} 