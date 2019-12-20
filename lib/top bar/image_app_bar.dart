import 'package:flutter/material.dart';

import '../main.dart';

class ImageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

return new Container(
  child: new Stack(children: <Widget>[
    new Container(
      child: new Image.network('https://cdn.pixabay.com/photo/2015/12/01/20/28/fall-1072821__340.jpg'),
      color: Colors.lightGreen,
    ),
    new Scaffold(
      appBar: new AppBar(
        leading: IconButton(icon: Icon(Icons.menu),
        onPressed: (){
Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Page2(),
        ),
      );
        },),
        title: new Text('Image App Bar'),
        actions: <Widget>[       
        IconButton(
          icon: const Icon(Icons.search),          
          onPressed: (){

          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),          
          onPressed: (){

          },
        ),
      ],
      backgroundColor: Colors.transparent,
        elevation: 0.0,
        bottom: PreferredSize(preferredSize: Size(100, 100),
        child: Container(),),
      ),
      
      backgroundColor: Colors.transparent,
      body: new Container(
        color: Colors.white,
        child: Center(child: new Text('This is Image App Bar Page', style: TextStyle(fontSize: 30),)),)
    )
    
  ],
),

);

}
}