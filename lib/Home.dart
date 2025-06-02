import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _listaViagens = ["Local 1", "Local 2", "Local 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Viagens", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: ListView.builder(
                itemCount: _listaViagens.length,
                itemBuilder: (context, index) {
                  String titulo = _listaViagens[index];
                  return GestureDetector(
                    onTap: () {},
                    child: Card(
                        child: ListTile(
                      title: Text(titulo),
                      trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.remove_circle,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ]),
                    )),
                  );
                }))
      ]),
    );
  }
}
