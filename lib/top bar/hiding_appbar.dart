import 'package:flutter/material.dart';



class HideAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: CustomScrollView(
         
        slivers: <Widget>[
      //   IconButton(icon: Icon(Icons.menu),
      //   onPressed: (){
      // //     Navigator.push(
      // //         context,
      // //         MaterialPageRoute(
      // //             builder: (context) => Page2(),
      // //   ),
      // // );
      //   },),
          Container(
            
            child: SliverAppBar(
              
              expandedHeight: 150.0,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Hiding App Bar'),
                ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index)=> ListTile(
                title: Text('List Item $index'),
                ),
                 ),
          )
        ],
      ),
      
    );
  }
}
