import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routine Order',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Routine Order'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var breakfastText = "Jarius Stewart's Bacon, Egg, Cheese Ciabatta";
  var lunchText = "Jetta Kroll's Bourbon Akai BBQ Chicken";

  void setBreakfastText(String bt){
    setState(() {
      breakfastText = bt;
    });
  }
  void setLunchText(String l){
    setState(() {
      lunchText = l;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("April 8, 2023", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Silver Saturday: OCPs"),
                          Text("Current Weather: 40°F and Sunny"),
                        ],
                      )
                    ),
                  ]
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Reveille:"),
                        Text("Taps:"),
                        Text("Gym:"),
                        Text("Library:"),
                      ],
                    )
                  ),
                  SizedBox(
                    height: 200,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("0700"),
                        Text("0130"),
                        Text("0800-1800"),
                        Text("Closed"),
                      ],
                    )
                  ),SizedBox(
                    height: 200,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Hap's:"),
                        Text("Pool:"),
                        Text("C-Store:"),
                      ],
                    )
                  ),
                  SizedBox(
                    height: 200,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("1800-2400"),
                        Text("1300-1800"),
                        Text("Closed"),
                      ],
                    )
                  ),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("2023", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Graduation"),
                        Text("75"),
                      ],
                    )
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("2024", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("439"),
                        Text("Ring Dance"),
                        Text("69"),
                      ],
                    )
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("2025", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("802"),
                        Text("Commitment"),
                        Text("144"),
                      ],
                    )
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("2026", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("∞"),
                        Text("Recognition"),
                        Text("25"),
                      ],
                    )
                  )
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("MAF", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("0645-0700"),
                          Text("CQ"),
                        ],
                      )
                    ),
                  ]
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Breakfast", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("0600-0800"),
                          Text(breakfastText),
                        ],
                      )
                    ),
                  ]
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("NMF (CG02/4 First) & Lunch (1155)", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1135-1215"),
                          Text(lunchText),
                        ],
                      )
                    ),
                  ]
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      )
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("Character Discussion", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1245-1338"),
                          Text("SAR"),
                        ],
                      )
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("Character Discussion", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1245-1338"),
                          Text("SAR"),
                        ],
                      )
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("Warfighter Talk", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1245-1338"),
                          Text("F1"),
                        ],
                      )
                    ),
                  ]
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("Dinner", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("1700-1950"),
                          Text("Caden Hubner's Sheppard's Pie"),
                        ],
                      )
                    ),
                  ]
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("Optional", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    )
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("Mandatory", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    )
                  ),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("OD: TSgt Manuel (719) 238-6541"),
                          Text("ONLY CALL OR TEAMS MESSAGE THE OD"),
                          Text("SOD 1: Alex Schwier (918) 990-0114"),
                          Text("SOD 2: Taylor Mtzger (719) 339-9280"),
                          Text("CWOC: (719) 333-2910"),
                          Text("24/7 CWOC: C2C Nicholas Martin (860) 519-7331"),
                        ],
                      )
                    ),
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Written By: C/SMSgt Hailey D. Kim"),
                          Text("Approved By: C/Col Sara M. Deczynski"),
                        ],
                      )
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      margin: const EdgeInsets.all(30.0),
                      padding: const EdgeInsets.all(3.0),
                       decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        )
                      ),
                      child: TextButton(
                        child: const Text("Test Admin Page/Button", style: TextStyle(color: Colors.black),),
                        onPressed: () {_awaitReturnValueFromSecondScreen(context);}
                      )
                    ),
                  ]
                ),
            ]
          ),
        ),
      ),
    );
  }

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {

    // start the SecondScreen and wait for it to finish with a result
    AdminPassInfo result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AdminPage(),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      breakfastText = result.breakfastText;
      lunchText = result.lunchText;
    });
  }
}

class AdminPage extends StatelessWidget{
  @override
  final btController = TextEditingController();
  final lController = TextEditingController();
  var bt = "e";
  void _setText() {
    setState(){
      bt = btController.text;
    }
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Admin RO'),
        leading: Icon(Icons.account_circle_rounded),

      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              TextFormField(
                controller: btController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Breakfast: ",
                ),
              ),
              TextFormField(
                controller: lController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Lunch: ",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, AdminPassInfo(btController.text, lController.text, 2));
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ), 
    );
  }
}

class AdminPassInfo{
  var breakfastText = "";
  var lunchText = "";
  var number = 0;

  AdminPassInfo(breakfastTextN, lunchTextN, numberN){
    breakfastText = breakfastTextN;
    lunchText = lunchTextN;
    number = numberN;
  }
}