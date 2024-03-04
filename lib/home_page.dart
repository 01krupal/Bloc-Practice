import 'package:bloc_practice/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = CounterCubit().state;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("title"),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have to push the button this many time:"),
            Text("$counter",  style: Theme.of(context).textTheme.headlineMedium,),

          ],
        ),
      ),
    );
  }
}
