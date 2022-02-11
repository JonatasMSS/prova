import 'dart:ui';
import 'const.dart';
import 'package:flutter/material.dart';

class DescPage extends StatefulWidget {
  DescPage({
    Key? key,
    this.assetL = 'assets/ap2.jpg',
    this.price = 0.0,
    this.bairro = 'null',
    this.count = 4,
    this.imovel = "NULL",
    this.descr = const [],
  }) : super(key: key);
  final String imovel;
  final String assetL;
  final double price;
  final String bairro;
  final int count;
  String loremIpsum = LoremIpsum;
  final List<String> descr;
  @override
  State<DescPage> createState() => _DescPageState();
}

class _DescPageState extends State<DescPage> {
  List<Widget> stars = [];
  int i = 0;
  String percent = "";

  void defPercent() {
    for (i; i <= 5; i++) {
      percent = ((widget.count / 6) * 100).toStringAsPrecision(2);
      stars.add(
        Icon(
          Icons.star_border_rounded,
          color: Colors.purple[300],
        ),
      );
    }
    i = 0;
    for (i; i <= widget.count; i++) {
      stars[i] = Icon(
        Icons.star,
        color: Colors.purple,
      );
    }
  }

  @override
  void initState() {
    defPercent();
    super.initState();
  }

  @override
  void dispose() {
    i = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          widget.imovel,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: Column(
            children: [
              //Primeiro container de Imagem
              Expanded(
                flex: 3,
                child: Container(
                    //color: Colors.red,
                    child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Image(
                    image: AssetImage(widget.assetL),
                    fit: BoxFit.fill,
                  ),
                )),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                //color: Colors.blue,
                child: Column(
                  children: [
                    // Linha do Bairro e Preço
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(3),
                            height: 40,
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              "Bairro:" + widget.bairro,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "RS " + widget.price.toString(),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Linha da Pontuação
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 70,
                          //padding: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            //color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Nota:",
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            child: Row(
                              children: stars,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 40,
                            child: Row(
                              children: [
                                Text(
                                  percent + "%",
                                  textScaleFactor: 1.2,
                                ),
                                Icon(
                                  Icons.tag_faces,
                                  color: widget.count >= 3
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 110,
                //color: Colors.yellow,
                child: Column(
                  children: [
                    Row(
                      children: [
                        DescContainers(
                          icone: Icons.bed_sharp,
                          desc: widget.descr[0],
                        ),
                        DescContainers(
                          desc: widget.descr[1],
                          icone: Icons.bathtub_outlined,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        DescContainers(
                          icone: Icons.living_outlined,
                          desc: widget.descr[2],
                        ),
                        DescContainers(
                          icone: Icons.balcony_rounded,
                          desc: widget.descr[3],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Descrição",
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  //color: Colors.green,
                  child: Text(
                    widget.loremIpsum,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10),
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "Voltar",
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(10),
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Alugar",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DescContainers extends StatelessWidget {
  DescContainers({
    Key? key,
    this.desc = "Nehum",
    this.icone = Icons.no_encryption_sharp,
  }) : super(key: key);
  final String desc;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(3),
        height: 40,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Icon(icone),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
