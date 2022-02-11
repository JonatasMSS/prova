import 'dart:math';

import 'package:flutter/material.dart';

import 'package:prova_2/src/descPage.dart';

class ImoveisAlug extends StatelessWidget {
  const ImoveisAlug({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[700],
          elevation: 0,
          title: Text(
            "Imoveis a alugar",
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  photoContainer(
                    Title: 'Apartamento LaPlaza, João Pessoa',
                    bairro: "Cabo Branco",
                    subTitle: 950,
                  ),
                  photoContainer(
                    Title: 'Casa com 2 quartos, Bayeux ',
                    bairro: "Jardim Aeroporto",
                    subTitle: 550,
                    assetLink: 'assets/casa.jpg',
                  )
                ],
              ),
              Row(
                children: [
                  photoContainer(
                    Title: 'Casa com 350m2, Jaguaribe',
                    bairro: "Jaguaribe",
                    subTitle: 600,
                    assetLink: 'assets/casa2.jpg',
                  ),
                  photoContainer(
                    Title: 'Apartamento 2 quartos, João Pessoa',
                    bairro: "Bancarios",
                    subTitle: 760,
                    assetLink: 'assets/ap2.jpg',
                  ),
                ],
              ),
              Row(
                children: [
                  photoContainer(
                    Title: 'Apartamento com 2 quartos, Mangabeira',
                    bairro: "Mangabeira",
                    subTitle: 750,
                    assetLink: 'assets/ap3.jpg',
                  ),
                  photoContainer(
                    Title: 'Casa com 2 quartos, Jardim Bandeirantes',
                    bairro: "Soldadores",
                    subTitle: 500,
                    assetLink: 'assets/casa3.jpg',
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class photoContainer extends StatelessWidget {
  const photoContainer({
    Key? key,
    this.assetLink = 'assets/ap1.jpg',
    this.Title = 'Titulo',
    this.subTitle = 0.0,
    this.mQuad = 0.0,
    this.bairro = "Nehum",
  }) : super(key: key);

  final String assetLink;
  final String Title;
  final double subTitle;
  final double mQuad;
  final String bairro;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          List salas = ["Grande", "Pequena"];
          int n = Random().nextInt(4) + 1;
          int nB = Random().nextInt(1) + 1;
          int salaR = Random().nextInt(2);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DescPage(
                assetL: assetLink,
                bairro: bairro,
                count: n,
                descr: [
                  n.toString() + " Quartos",
                  nB.toString() + " Banheiros",
                  "Sala " + salas[salaR],
                  "Varanda",
                ],
                price: subTitle,
                imovel: Title,
              ),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
          height: 230,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Image(
                    image: AssetImage(assetLink),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              ListTile(
                dense: true,
                title: Text(
                  Title,
                  textScaleFactor: 1.5,
                  textWidthBasis: TextWidthBasis.parent,
                  textAlign: TextAlign.start,
                ),
                subtitle: Text(
                  "RS" + subTitle.toString(),
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
