import 'package:flutter/material.dart';
import 'package:httpnamaz/httpsalat/model/httpnamazmodel.dart';
import '../viewModel/httpnamazviewmodel.dart';

class HttpNamazView extends HttpNamazViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView.builder(
        itemCount: httpnam.length,
        itemBuilder: (context, index) => buildCardHttp(httpnam[index]),
      ),
    );
  }

  Card buildCardHttp(HttpNamazModel nam) {
    return Card(
        color: Colors.lightBlueAccent,
        margin: EdgeInsets.all(20),
        child: ListTile(
          title: Align(
            child: Center(child: Image.network(nam.ayinSekliURL)),
            alignment: Alignment(-1.2, 0),
          ),
          subtitle: Column(
            children: [
              SizedBox(height: 4),
              Text(
                "Hicri Tarih:" + nam.hicriTarihUzun,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Miladi Tarih: " + nam.miladiTarihUzun,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "İmsak: " + nam.imsak,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Güneş: " + nam.gunes,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Öğle: " + nam.ogle,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "İkindi: " + nam.ikindi,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Akşam: " + nam.aksam,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Yatsı: " + nam.yatsi,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Namaz Vakitleri "),
    );
  }
}
