//rt 'package:component/scrolling_bar.dart';
import 'package:flutter/material.dart';



class BottomIconBar extends StatefulWidget {
 // NavigationBar({Key key}) : super(key: key);

  @override
  _BottomIconBarState createState() => _BottomIconBarState();
}

class _BottomIconBarState extends State<BottomIconBar> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Icon Bar Sample'),
      ),
      body: Center(child: Text('Bottom Icon Bar',style: TextStyle(fontSize: 30),)),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 2.0,
          
        ),
      
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurpleAccent[700],
         child:  Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu),color: Colors.white, onPressed: () {},),
          Text('                                                           '),
          IconButton(icon: Icon(Icons.search),color: Colors.white, onPressed: () {},),
          IconButton(icon: Icon(Icons.more_vert),color: Colors.white ,onPressed: () {},),
        ],
        
      ),
        
        
      ),
       
    );
  }
}