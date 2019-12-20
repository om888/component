import 'package:flutter/material.dart';

import '../main.dart';

class ProminentTopBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  
  Widget build(BuildContext context) {
  return Scaffold(
    key: scaffoldKey,
    appBar: AppBar(
      leading: IconButton(icon: Icon(Icons.menu),
      onPressed: (){
        Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Page2(),
        ),
      );
      },),
      title: const Text('Prominent App Bar'),
      
      actions: <Widget>[
       
        IconButton(
          icon: const Icon(Icons.search),
          
          onPressed: (){

          },
        ),
       
      ],
      bottom: PreferredSize(preferredSize: Size(60, 60),
      child: Container(),
      ),
    ),
    // drawer: Drawer(
        
    //     child: ListView(
    //       children: <Widget>[
            
    //         ListTile(
    //           title: Text('Favourite'),
    //           trailing: Icon(Icons.arrow_forward),
    //           onTap: (){  },
    //         ),
    //         ListTile(
    //           title: Text('Setting'),
    //           trailing: Icon(Icons.arrow_forward),
    //           onTap: (){   },
    //         ),
    //        ],
    //     ),
    //   ),
    body: const Center(
      child: Text(
        'This is Prominent App Bar Page',
        style: TextStyle(fontSize: 24),
      ),
    ),
  );
}
 
}


//final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

// void openPage(BuildContext context) {
//   Navigator.push(context, MaterialPageRoute(
//     builder: (BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Next page'),
//         ),
//         body: const Center(
//           child: Text(
//             'This is the next page',
//             style: TextStyle(fontSize: 24),
//           ),
//         ),
//       );
//     },
//   ));
// }

// ...

