
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({ key }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Decider"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(Icons.shopping_bag),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(Icons.history),
            ),
          )
        ]
      ),
      
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Decisions Left: ##"),
              ),
              Spacer(),
          _buildQuestionForm(),
              Spacer(flex: 3,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Account Type: Free"),
            )
            ],

          ),
        ),
      ),
    );
  }

  Widget _buildQuestionForm() {
    return Column(children: [
    Text("should I", style: Theme.of(context).textTheme.headline4),
    Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
      child: TextField(
        decoration: InputDecoration(
          helperText: 'Enter A Question',
        ),
      ),
    ),
    ElevatedButton(onPressed: (){
      print("clicked");
    }, 
    child: Text("Ask")),
    ],
    );
  }
}