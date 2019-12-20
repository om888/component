import 'package:flutter/material.dart';

class ContextualAppBar extends StatefulWidget {
  @override
  _ContextualAppBarState createState() => _ContextualAppBarState();
}

class _ContextualAppBarState extends State<ContextualAppBar> {
  static final AppBar _defaultBar = AppBar(
    title: Text('Inbox'),
    leading: IconButton(icon: Icon(Icons.menu),
      onPressed: (){
        
      },
      ),
     actions: <Widget>[
                IconButton(
          icon: const Icon(Icons.more_vert),
          
          onPressed: (){

          },
        ),
      ],
    backgroundColor: Colors.blue,
  );

  static final AppBar _selectBar = AppBar(
    title: Container(
      child: Text('selected',)),
    leading: Icon(Icons.close),
     actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.unarchive),
          
          onPressed:(){

          },
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          
          onPressed: (){

          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          
          onPressed: (){

          },
        ),
      ],
    backgroundColor: Colors.black87,
  );

  AppBar _appBar = _defaultBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Center(child: Text(index.toString(),style: TextStyle(fontSize: 20),)),
                onTap: () {
                  
                setState(() {
              _appBar = _appBar == _defaultBar
                  ? _selectBar
                  : _defaultBar;
            });

                }
                
              );
            },
            itemCount: 50));      
    
  }
}


// setState(() {
//               _appBar = _appBar == _defaultBar
//                   ? _selectBar
//                   : _defaultBar;
//             });