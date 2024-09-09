import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {

  //variable
    int _counter = 0;


  //method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //UI (user interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar:AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 49, 87),
        elevation: 0,
        title: const Text("BEV COUNTER_APP", style: TextStyle(color: Colors.deepOrange),)
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text("You push the button this many times", style: TextStyle(color:Colors.blue),),
        

            // Counter Value
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 35),
            ),

            //Button
            ElevatedButton(
              onPressed: _incrementCounter, 
              child: const Text("increment!", style: TextStyle(color:Colors.red, fontSize:20,), )
              ),
          ],
        ),
      )
    );
  }
}