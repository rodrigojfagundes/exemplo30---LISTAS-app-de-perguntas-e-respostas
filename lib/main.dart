import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//criando uma LISTA/VETOR chamado VALORES com 3 valores...
  var perguntas = [
    'maior cidade de sc',
    'maior cidade do brasil',
    'maior pais da america do sul'
  ];

  var respostas_certa = ['joinville', 'sao paulo', 'brasil'];

  var respostas1 = ['joinville', 'curitiba', 'argentina'];

  var respostas2 = ['itapema', 'sao paulo', 'uruguai'];

  var respostas3 = ['tijucas', 'rio de janeiro', 'brasil'];

  var indice = 0;

  var resultado = ['resultado'];

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //tudo q ta no safe area ta na area visivel do app
        body: SafeArea(
          //column para se quiser poder criar VARIOS CONTAINERS
          child: Column(
            //children é tipo uma lista/vetor de coisas tipo containers
            children: [
              //container q vai exibir a LISTA/VETOR com as PERGUNTAS
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Text(perguntas[indice]),
              ),
              //area de deteccao de toque/click
              GestureDetector(
                //se for apertado uma vez
                onTap: () {
                  //setstate permite alterar o valor das variaveis e listas
                  setState(() {
                    //verificando se a lista RESPOSTA1 q a alternativa q CLICAMOS
                    //tem a mesma resposta/valor q a LISTA das RESPOSTAS_CERTAS...
                    //ambos no mesmo indice
                    if (respostas1[indice] == respostas_certa[indice]) {
                      //caso sim, a variavel resultado recebe o valor RESPOSTA 1 CERTA
                      resultado = ['resposta 1 certa'];
                      //variavel INDICE ganha + 1, e assim aparece a PROX pergunta e PROX
                      //respostas
                      indice = indice + 1;
                      //SE a resposta clicada for errada
                    } else {
                      //RESULTADO ganha RESPOSTA 1 ERRADA
                      resultado = ['resposta 1 errada'];
                      //e de qualquer forma o INDICE/CONTADOR ganhar + 1
                      //para ir para PROX pergunta e PROX Resposta
                      indice = indice + 1;
                    }
                  });
                },
                //container q vai mostrar o q ta na RESP 1 para lermos antes de clicar...
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  //mostrando o q ta no indice 0 da LISTA resposta1
                  child: Text(respostas1[indice]),
                ),
              ),
              //criando uma OUTRA area para detectar click/toque
              GestureDetector(
                //se for apertado 1 vez
                onTap: () {
                  //setstate permite alterar o estado/valor de LISTA e VARIAVEIS
                  setState(() {
                    //verificando se o valor q ta na LISTA e INDICE RESPOSTA 2,
                    //éé a RESPOSTA CERTA comparando com a LISTA RESPOSTAS_CERTAS
                    //lista essa q tem as resposta certas, no mesmo INDICE
                    if (respostas2[indice] == respostas_certa[indice]) {
                      //caso sim, variavel resultado recebe a informacao "resposta 2 certa"
                      resultado = ['resposta 2 certa'];
                      //contador recebe + 1, e assim pula para prox pergunta a respostas
                      indice = indice + 1;
                      //se nao tiver clicado na resp certa
                    } else {
                      //variavel resultado, recebe o texto RESPOSTA 2 ERRADA
                      resultado = ['resposta 2 errada'];
                      //contador recebe + 1, e assim pula para prox pergunta a respostas
                      indice = indice + 1;
                    }
                  });
                },
                //container pqra exibir o q ta na LISTA e INDICE q vamos clicar...
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                  //exibindo o conteudo de resposta2 na posicao...indice/contador
                  child: Text(respostas2[indice]),
                ),
              ),
              //campo para detectar toque/click
              GestureDetector(
                //verificar se foi tocado 1 vez
                onTap: () {
                  //setstate permite alterar o valor da variavel/lista
                  setState(() {
                    //verificando se o valor q ta rem resposta3 e no indice
                    //esta correta comparando com a lista respostas certas...
                    if (respostas3[indice] == respostas_certa[indice]) {
                      //caso sim, variavel resultado recebe RESPOSTA 3 CERTA
                      resultado = ['resposta 3 certa'];
                      //contado SOMA 1
                      indice = indice + 1;
                      //se nao
                    } else {
                      //variavel resultado recebe RESPOSTA 3 ERRADA
                      resultado = ['resposta 3 errada'];
                      //de qualquer forma contado recebe + 1
                      indice = indice + 1;
                    }
                  });
                },
                //container para exibir o q ta na lista[indice] (a repsosta 3) antes de clicarmos
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                  //exibindo o q ta na lista resposta3 no indice/contador dela...
                  child: Text(respostas3[indice]),
                ),
              ),
              //container para mostrar os resultados
              Container(
                height: 100,
                width: 100,
                color: Colors.lime,
                child: Text('$resultado'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
