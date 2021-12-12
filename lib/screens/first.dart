import 'package:call_backs/screens/second.dart';
import 'package:flutter/material.dart';
import 'package:call_backs/screens/home.dart';

class First extends StatefulWidget {
  var counter;
  var callBackFunction;

  First({Key? key, this.counter, this.callBackFunction}) : super(key: key);
  static const String routeName = '/first';
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  void _incrementCounter() {
    setState(() {
      widget.counter++;
      widget.callBackFunction(widget.counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter Call Back Task - Second Screen',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Second(
                        counter: widget.counter, callBackFunction: callBack)));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "Next Screen",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),

            // Previous button gesture detector

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                        counter: widget.counter, callBackFunction: callBack)));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Text(
                      "Previous Screen",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  callBack(varcount) {
    setState(() {
      widget.counter = varcount;
      widget.callBackFunction(varcount);
    });
  }
}
