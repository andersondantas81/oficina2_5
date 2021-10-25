import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculadora - Oficina 2.5 flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double num1 = 0;
  double num2 = 0;
  String operador = "";
  String operacao = "";
  double resultado = 0.0;
  String dig1 = "";
  String dig2 = "";

  void _addDigito(String dig) {
    if(this.operador.isEmpty){
      setState(() {
        this.dig1 += dig;
        this.operacao += this.dig1;
      });
    }else {
      setState(() {
        this.dig2 += dig;
        this.operacao += this.dig2;
      });
    }
  }

  void _addOperador(String op) {
    if(!this.operador.isEmpty){
      return;
    }
    setState(() {
      this.operador = op;
      this.operacao += op;
    });
  }

  void _convertParaDouble(){
    setState(() {
      this.num1 = double.parse(this.dig1);
      this.num2 = double.parse(this.dig2);
    });

  }

  void reset(){
    this.num1 = 0;
    this.num2 = 0;
    this.operador = "";
    this.operacao = "";
    this.resultado = 0.0;
    this.dig1 = "";
    this.dig2 = "";
  }

  void calcular() {
    if (num2 <= 0) {
      operacao = "Error";
      return;
    }
    if ((num1 > 0) && !operador.isEmpty && (num2 > 0)){
    switch (operador) {
    case '+':
    resultado = num1 + num2;
    break;
    case '-':
      resultado =  num1 - num2;
    break;
    case '/':
    resultado = num1 / num2;
    break;
    case '*':
      resultado = num1 * num2;
    break;
      case '%':
        resultado = num1 % num2;
        break;
    default:
    print('operador informado está incorreto.');
    break;
    }
    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            _addDigito("0");
                          },
                          child: const Text('0')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addDigito("1");},
                          child: const Text('1')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addDigito("2");},
                          child: const Text('2')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addDigito("3");},
                          child: const Text('3')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addDigito("4");},
                          child: const Text('4')),
                    ),
                  ]),
            ),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addDigito("5");},
                          child: const Text('5')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addDigito("6");},
                          child: const Text('6')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addDigito("7");},
                          child: const Text('7')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addDigito("8");},
                          child: const Text('8')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addDigito("9");},
                          child: const Text('9')),
                    ),
                  ]),
            ),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addOperador("+");},
                          child: const Text('+')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addOperador("-");},
                          child: const Text('-')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addOperador("*");},
                          child: const Text('*')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addOperador("/");},
                          child: const Text('/')),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {_addOperador("%");},
                          child: const Text('%')),
                    ),
                  ]),
            ),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            _convertParaDouble();
                            calcular();
                          },
                          child: const Text('Calcular')),
                    ),
                    Container(
                      width: 120,
                      height: 70,
                      color: Colors.black,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(5.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            setState(() {
                              reset();
                            });
                          },
                          child: const Text('Zerar')),
                    ),
                  ]),
            ),
            Center(
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .height * 0.75,
                        color: Colors.black,
                        child: Text(operacao, textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 50.0, color: Colors.white),
                        ),
                      )
                    ]

                )

            ),
            Center(
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .height * 0.75,
                        color: Colors.black,
                        child: Text(
                          resultado.toString(), textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 50.0, color: Colors.white),
                        ),
                      )
                    ]

                )

            )
          ],
        ),
      ),
    );
  }
}
