import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(        
        title: Text(widget.title),
      ),
      body: SafeArea(       
        child: Column(         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
          ],
        ),
      ),
      
    );
  }
}