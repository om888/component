import 'package:flutter/material.dart';


class BottomIconEndBar extends StatefulWidget {
 // NavigationBar({Key key}) : super(key: key);

  @override
  _BottomIconEndBarState createState() => _BottomIconEndBarState();
}

class _BottomIconEndBarState extends State<BottomIconEndBar> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Icon Bar Sample'),
      ),
      body: Center(child: Text('Bottom Icon FAB', style: TextStyle(fontSize: 30),)),
       floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.reply),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 2.0,
          
        ),
      
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurpleAccent[700],
         child:  Row(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(icon: Icon(Icons.archive),color: Colors.white, onPressed: () {},),
          IconButton(icon: Icon(Icons.email),color: Colors.white, onPressed: () {},),
          IconButton(icon: Icon(Icons.label),color: Colors.white ,onPressed: () {},),
          IconButton(icon: Icon(Icons.delete),color: Colors.white ,onPressed: () {
            showSnackBar(context);
          },),
        ],
        
      ),
        
        
      ),
       
    );
  }
}
void showSnackBar(BuildContext context){
  var snackBar= SnackBar(
    content: Text("Item Delted"),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}