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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'List View'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var dataList = ['Rizve', 'Rahman', 'Reza', 'Peas', 'Ritu', 'Masuma', 'Ammu','Abbu', 'Dada'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(itemBuilder: (context, index) {
          return Text(dataList[index], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),);
        },
          itemCount: dataList.length,
          separatorBuilder: (context, index) {
            return Divider(thickness: 4, height: 50,);
          }
        ),
      )
    );
  }
}
