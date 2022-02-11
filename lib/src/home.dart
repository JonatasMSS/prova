import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    double volta = 0;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.only(right: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image(
                image: AssetImage('assets/logo.jpg'),
              ),
            ),
            Text(
              'Imobiliaria Doce Lar',
            ),
          ],
        ),
        backgroundColor: Colors.purple[600],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.jpg'),
                fit: BoxFit.fill,
              ),
              color: Colors.purple,
            ),
            child: Container(
              child: Text(
                'IMOBILIÁRIA DOCE LAR',
              ),
              margin: const EdgeInsets.only(top: 100, left: 10),
            ),
          ),
          ListTile(
            title: Text("Imóveis"),
          ),
          ListTile(
            leading: Icon(Icons.house),
            title: Text("Alugar"),
            onTap: () {
              Navigator.pushNamed(context, '/imoveisAlug');
            },
          ),
          ListTile(
            leading: Icon(Icons.house),
            title: Text("Vender"),
          ),
          ListTile(
            title: Text("Sair"),
          ),
        ],
      )),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 90),
              width: 350,
              height: 350,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    offset: Offset(1, 1),
                    color: Colors.grey,
                  )
                ],
              ),
              child: Image(
                image: AssetImage('assets/logo.jpg'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                "Imobiliaria Doce Lar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
