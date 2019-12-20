import 'package:flutter/material.dart';


class BottomInsetFab extends StatefulWidget {
 // NavigationBar({Key key}) : super(key: key);

  @override
  _BottomInsetFabState createState() => _BottomInsetFabState();
}

class _BottomInsetFabState extends State<BottomInsetFab> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Icon Bar Sample'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Bottom Icon End FAB', style: TextStyle(fontSize: 36),),
          onPressed: null,
        ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 2.0,
          
        ),
      
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
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