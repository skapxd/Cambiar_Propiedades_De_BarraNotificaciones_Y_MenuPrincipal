import 'package:flutter/material.dart';
import 'package:newapp/src/models/new_models.dart';

class NewServices with ChangeNotifier{

  List<Article> headLines = [];

  NewServices() {

    this.getTopHeadLines();
  }

  getTopHeadLines() {

    print('cargando HeadLines');
  }
}