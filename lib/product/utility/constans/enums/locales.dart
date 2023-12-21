import 'package:flutter/material.dart';

//Prokject locale enum for operation and conf
enum Locales {
  //Turkish locale
  tr(Locale('tr', 'TR')),

  //Englisg locale
  en(Locale('en', 'EN'));

  //Locale Value
  final Locale locale;

  const Locales(this.locale);
}
