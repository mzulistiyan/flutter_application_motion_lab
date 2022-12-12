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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(
                10,
                10,
                10,
                10,
              ),
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
              ),
              child: const Icon(
                Icons.arrow_back_sharp,
                size: 30,
                color: Colors.green,
              ),
            ),
          ),

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
        ),
        body: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const Text(
              'Total Tagihan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Rp1.772.500',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Kartu Kredit / Debit',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Transaksi Kredit dan Debit',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Nomor Kartu',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField()
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
