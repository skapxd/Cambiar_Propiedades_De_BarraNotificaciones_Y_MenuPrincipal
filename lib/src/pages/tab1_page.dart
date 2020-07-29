import 'package:flutter/material.dart';

class Tab1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text('Title'),
      ),

      body: Center(
        child: Text('Page'),
      ),
    );
  }
}