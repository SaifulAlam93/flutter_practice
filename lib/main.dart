import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:my_app/page1.dart';
import 'package:my_app/page2.dart';
import 'package:my_app/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: PracticeN11(),
    );
  }
}

// Hero Icon
class PracticeN11 extends StatelessWidget {
  const PracticeN11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CircleAvatar(
        radius: 50,
        child: GestureDetector(
          child: Hero(
            tag: "Add",
            child: Icon(
              Icons.work_off,
            ),
          ),
          onTap: () {},
        ),
      ),
    ));
  }
}

///First stf weget you need to call it from main method

///void main() {
// runApp(MyFirstStateFullW());
// }

class MyFirstStateFullW extends StatefulWidget {
  const MyFirstStateFullW({Key? key}) : super(key: key);

  @override
  State<MyFirstStateFullW> createState() => _MyFirstStateFullWState();
}

class _MyFirstStateFullWState extends State<MyFirstStateFullW> {
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          Page1(),
          Page2(),
          Page3(),
        ],
      )),
    );
  }
}

//Grid View
class PcticeN10 extends StatelessWidget {
  const PcticeN10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                Container(
                  color: Colors.amberAccent,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.cyan,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.teal,
                  height: 250,
                  width: 250,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 250,
                  width: 250,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Card View
class PracticeN9 extends StatefulWidget {
  const PracticeN9({super.key});

  @override
  State<PracticeN9> createState() => _PracticeN9State();
}

class _PracticeN9State extends State<PracticeN9> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Center(
          child: Card(
            elevation: 50,
            shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.all(
              //   Radius.circular(20),
              // ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
        )),
      ),
    );
  }
}

// LiquidSwipe--- Page change style
class PracticeN8 extends StatelessWidget {
  const PracticeN8({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.amberAccent,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.cyan,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.teal,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.amberAccent,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.cyan,
        height: 250,
        width: 250,
      ),
      Container(
        color: Colors.teal,
        height: 250,
        width: 250,
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: LiquidSwipe(pages: pages),
        ),
      ),
    );
  }
}

//Show Image

class PracticeN7 extends StatelessWidget {
  const PracticeN7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(body: Center(child: Image.asset("images/test.jpg"))),
      ),
    );
  }
}

//Stack  It used to create weget up above another weget.
class PracticeN6 extends StatelessWidget {
  const PracticeN6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 3,
                color: Colors.yellow,
              ),
              Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 30,
                  ))
            ],
          ),
        )),
      ),
    );
  }
}

//ListTail It used to design a list of data
class PracticeN5 extends StatelessWidget {
  const PracticeN5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              ListTile(
                title: Text("List Tile 1"),
                subtitle: Text("ListTile practice with saiful.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 1"),
                subtitle: Text("ListTile practice with saiful.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 1"),
                subtitle: Text("ListTile practice with saiful.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("List Tile 1"),
                subtitle: Text("ListTile practice with saiful.."),
                leading: CircleAvatar(
                  child: Icon(Icons.add_call),
                ),
                trailing: Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// MediaQuery use to make responsive UI
class PracticeN4 extends StatelessWidget {
  const PracticeN4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//List View
class PracticeN3 extends StatelessWidget {
  const PracticeN3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(children: [
          Container(
            color: Colors.amberAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.cyan,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.teal,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.amberAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.cyan,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.teal,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.amberAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.cyan,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.teal,
            height: 250,
            width: 250,
          ),
        ]),
      ),
    );
  }
}

//Row
class PracticeN2 extends StatelessWidget {
  const PracticeN2({Key? key}) : super(key: key);

  // get controller => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Container(
              color: Colors.amberAccent,
              height: double.infinity,
              width: 100,
            ),
            Container(
              color: Colors.cyan,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.teal,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.amberAccent,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.cyan,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.teal,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.amberAccent,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.cyan,
              width: 100.0,
              height: double.infinity,
            ),
            Container(
              color: Colors.teal,
              width: 100.0,
              height: double.infinity,
            ),
          ]),
        ),
      ),
    );
  }
}

//Safe Area
class PracticeN1 extends StatelessWidget {
  const PracticeN1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: 200.0,
            color: Colors.yellow,
            child: const Center(
              child: Text(
                "Hello",
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
        titleSpacing: 5,
        // centerTitle: true,
        toolbarHeight: 60, //Defoult height 60
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 51, 71, 88),
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("1nd Button", context);
                // print("aaaa");
              },
              icon: Icon(Icons.account_balance)),
          IconButton(
              onPressed: () {
                MySnackBar("2nd Button", context);
              },
              icon: Icon(Icons.accessibility)),
          IconButton(
              onPressed: () {
                MySnackBar("3nd Button", context);
              },
              icon: Icon(Icons.accessible_forward)),
          IconButton(
              onPressed: () {
                MySnackBar("4nd Button", context);
              },
              icon: Icon(Icons.account_balance_wallet)),
          IconButton(
              onPressed: () {
                MySnackBar("4nd Button", context);
              },
              icon: Icon(Icons.add_to_drive)),
        ],
      ),
      body: Center(
        child: Text("Hello World"),
      ),
      drawer: Container(),
      endDrawer: Container(),
      // bottomNavigationBar: Container(),// AppBer button is not working
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar("floatingActionButton", context);
        },
        elevation: 10,
        child: Icon(Icons.add_box_rounded),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          titleSpacing: 10,
          // centerTitle: true,
          toolbarHeight: 60, //Defoult height 60
          toolbarOpacity: 1,
          elevation: 10,
          backgroundColor: Color.fromARGB(255, 51, 71, 88),
          actions: [
            IconButton(
                onPressed: () {
                  MySnackBar("1nd Button", context);
                  // print("aaaa");
                },
                icon: Icon(Icons.account_balance)),
            IconButton(
                onPressed: () {
                  MySnackBar("2nd Button", context);
                },
                icon: Icon(Icons.accessibility)),
            IconButton(
                onPressed: () {
                  MySnackBar("3nd Button", context);
                },
                icon: Icon(Icons.accessible_forward)),
            IconButton(
                onPressed: () {
                  MySnackBar("4nd Button", context);
                },
                icon: Icon(Icons.account_balance_wallet)),
            IconButton(
                onPressed: () {
                  MySnackBar("4nd Button", context);
                },
                icon: Icon(Icons.add_to_drive)),
          ],
        ),
        body: Center(
          child: Text("Hello World"),
        ),
        drawer: Container(),
        endDrawer: Container(),
        bottomNavigationBar: Container(),
        floatingActionButton: BackButton(),
      ),
    );
  }
}

//container, center, text
class Practice2 extends StatelessWidget {
  const Practice2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
          height: double.infinity,
          width: 200.0,
          color: Colors.yellow,
          child: const Center(
            child: Text(
              "Hello",
              style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      )),
    );
  }
}

//Column
class Practice3 extends StatelessWidget {
  const Practice3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            color: Colors.blueAccent,
          ),
          Container(
            height: 200.0,
            width: double.infinity,
            color: Colors.redAccent,
          ),
          Container(
            height: 200.0,
            width: double.infinity,
            color: Colors.green,
          ),
        ],
      )),
    );
  }
}

//Row
class Practice4 extends StatelessWidget {
  const Practice4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
        children: [
          Container(
            height: double.infinity,
            width: 200.0,
            color: Colors.blueAccent,
          ),
          Container(
            width: 200.0,
            height: double.infinity,
            color: Colors.redAccent,
          ),
          Container(
            width: 200.0,
            height: double.infinity,
            color: Colors.green,
          ),
        ],
      )),
    );
  }
}

//Another design with Main method;

//main
// void main() => runApp(const Practice5());
// SingleChildScrollView---> To Make It Scrollable
class Practice5 extends StatelessWidget {
  const Practice5({Key? key}) : super(key: key);

  get controller => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          controller: controller,
          child: Column(children: [
            Container(
              color: Colors.amberAccent,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.cyan,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.teal,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.amberAccent,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.cyan,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.teal,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.amberAccent,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.cyan,
              height: 100.0,
              width: double.infinity,
            ),
            Container(
              color: Colors.teal,
              height: 100.0,
              width: double.infinity,
            ),
          ]),
        ),
      ),
    );
  }
}

//Dynamic hight (Expanded) without scrol view..
class Practice6 extends StatelessWidget {
  const Practice6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            //Expanded weget must be a chid of column or row
            flex: 2, //Take double space then other w
            child: Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.blueAccent,
            ),
          ),
          Expanded(
            child: Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.redAccent,
            ),
          ),
          Expanded(
            child: Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.redAccent,
            ),
          ),
          Expanded(
            child: Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.redAccent,
            ),
          ),
        ],
      )),
    );
  }
}

//Pading --(Expanded)
class Practice7 extends StatelessWidget {
  const Practice7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            //Expanded weget must be a chid of column or row
            flex: 2, //Take double space then other w
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.redAccent,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.green,
              ),
            ),
          ),
        ],
      )),
    );
  }
}

//Pading --(Expanded)
class Practice8 extends StatelessWidget {
  const Practice8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            //Expanded weget must be a chid of column or row
            flex: 2, //Take double space then other w
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.redAccent,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.green,
              ),
            ),
          ),
        ],
      )),
    );
  }
}

//ElevatedButton --(Expanded)
class Practice9 extends StatelessWidget {
  const Practice9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print("You press me");
            },
            child: const Text("Click Me"),
          ),
        ),
      ),
    );
  }
}

//TextButton --(Expanded)
class Practice10 extends StatelessWidget {
  const Practice10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              // ignore: avoid_print
              print("You press me");
            },
            child: const Text("Click Me"),
          ),
        ),
      ),
    );
  }
}

//Icon --(Expanded)
class Practice11 extends StatelessWidget {
  const Practice11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: const Icon(
              Icons.access_alarm,
              size: 50.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

//ElevatedButton With Icon & SizedBox --(Expanded)
class Practice12 extends StatelessWidget {
  const Practice12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 150.0,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print("You press me");
              },
              child: Row(
                children: const [
                  Text("Click Me"),
                  Icon(
                    Icons.access_alarm,
                    size: 50.0,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///visible wiget// layout wiget

//add image, card, padding
class Practice13 extends StatelessWidget {
  const Practice13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 30.0,
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/1280px-24701-nature-natural-beauty.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}

//add cercle
class Practice14 extends StatelessWidget {
  const Practice14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 70.0,
              child: Icon(
                Icons.abc_sharp,
                size: 40.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//add cercle
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

//App ber modifications
class Practice15 extends StatelessWidget {
  const Practice15({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
          leading: const Icon(Icons.ac_unit_sharp),
          actions: const [
            Icon(Icons.access_alarm_rounded),
            Icon(Icons.access_alarms_rounded)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.ac_unit_sharp),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class Practice16 extends StatelessWidget {
  const Practice16({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
          leading: const Icon(Icons.ac_unit_sharp),
          actions: const [
            Icon(Icons.access_alarm_rounded),
            Icon(Icons.access_alarms_rounded)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.ac_unit_sharp),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
