import 'package:call_backs/screens/first.dart';
import 'package:flutter/material.dart';
import 'package:call_backs/screens/home.dart';

class Second extends StatefulWidget {
  var counter;
  var callBackFunction;

  Second({ Key? key, this.counter,this.callBackFunction}) : super(key: key);
  static const String routeName = '/second';
  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
        title: Text('Counter Call Back Task - Third Screen',style: TextStyle(fontSize: 18),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
              // Previous button gesture detector
              GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        First(counter: widget.counter, callBackFunction: callBack)));
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
            )
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
    });
  }
}