// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mymoney/object/spending.dart';
import 'package:intl/intl.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Spending> spending= List.of({
        Spending(spendId: 1, spendItems: "spendItems1", spendTime: DateTime.now(), spendMoney: 100000),
        Spending(spendId: 2, spendItems: "spendItems2", spendTime: DateTime.now(), spendMoney: 200000)
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body:ListView.builder(
        itemCount: spending.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Container(
                child: Text(
                  "-"+spending[index].spendMoney.toString(),
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
              ),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
              title: Text(spending[index].spendItems),
              subtitle: Text(DateFormat('yyyy-MM-dd hh:mm:ss').format(spending[index].spendTime)),
              trailing: Icon(Icons.menu)
            ),
          );
        },
      ),
    );
  }
}
