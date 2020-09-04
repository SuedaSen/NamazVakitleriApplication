import 'package:flutter/material.dart';

class HttpNamazModel {
  String aksam;
  String ayinSekliURL;
  String gunes;
  String gunesBatis;
  String gunesDogus;
  String hicriTarihKisa;
  String hicriTarihUzun;
  String ikindi;
  String imsak;
  String kibleSaati;
  String miladiTarihKisa;
  String miladiTarihKisaIso8601;
  String miladiTarihUzun;
  String miladiTarihUzunIso8601;
  String ogle;
  String yatsi;

  HttpNamazModel(
      {this.aksam,
      this.ayinSekliURL,
      this.gunes,
      this.gunesBatis,
      this.gunesDogus,
      this.hicriTarihKisa,
      this.hicriTarihUzun,
      this.ikindi,
      this.imsak,
      this.kibleSaati,
      this.miladiTarihKisa,
      this.miladiTarihKisaIso8601,
      this.miladiTarihUzun,
      this.miladiTarihUzunIso8601,
      this.ogle,
      this.yatsi});

  HttpNamazModel.fromJson(Map<String, dynamic> json) {
    aksam = json['Aksam'];
    ayinSekliURL = json['AyinSekliURL'];
    gunes = json['Gunes'];
    gunesBatis = json['GunesBatis'];
    gunesDogus = json['GunesDogus'];
    hicriTarihKisa = json['HicriTarihKisa'];
    hicriTarihUzun = json['HicriTarihUzun'];
    ikindi = json['Ikindi'];
    imsak = json['Imsak'];
    kibleSaati = json['KibleSaati'];
    miladiTarihKisa = json['MiladiTarihKisa'];
    miladiTarihKisaIso8601 = json['MiladiTarihKisaIso8601'];
    miladiTarihUzun = json['MiladiTarihUzun'];
    miladiTarihUzunIso8601 = json['MiladiTarihUzunIso8601'];
    ogle = json['Ogle'];
    yatsi = json['Yatsi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Aksam'] = this.aksam;
    data['AyinSekliURL'] = this.ayinSekliURL;
    data['Gunes'] = this.gunes;
    data['GunesBatis'] = this.gunesBatis;
    data['GunesDogus'] = this.gunesDogus;
    data['HicriTarihKisa'] = this.hicriTarihKisa;
    data['HicriTarihUzun'] = this.hicriTarihUzun;
    data['Ikindi'] = this.ikindi;
    data['Imsak'] = this.imsak;
    data['KibleSaati'] = this.kibleSaati;
    data['MiladiTarihKisa'] = this.miladiTarihKisa;
    data['MiladiTarihKisaIso8601'] = this.miladiTarihKisaIso8601;
    data['MiladiTarihUzun'] = this.miladiTarihUzun;
    data['MiladiTarihUzunIso8601'] = this.miladiTarihUzunIso8601;
    data['Ogle'] = this.ogle;
    data['Yatsi'] = this.yatsi;
    return data;
  }
}
