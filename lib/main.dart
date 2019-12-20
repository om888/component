
import 'package:component/top%20bar/contextual_Appbar.dart';
import 'package:component/top%20bar/hiding_appbar.dart';
import 'package:component/top%20bar/image_app_bar.dart';
import 'package:component/top%20bar/prominent_appbar.dart';
import 'package:component/top%20bar/top_icon_bar.dart';
import 'package:flutter/material.dart';
import 'Calender/calender_scale.dart';
import 'Calender/calender_slide.dart';
import 'backdrop/backdrop_frontpage_list.dart';
import 'backdrop/backdrop_list.dart';
import 'backdrop/basic_backdrop.dart';
import 'bottom bar/bottom_icon.dart';
import 'bottom bar/bottom_icon_end_fab.dart';
import 'bottom bar/bottom_navigation.dart';
import 'bottom bar/hide_bottom_bar.dart';
import 'bottom bar/inset_fab.dart';
void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Component Demo',
      theme: ThemeData(primarySwatch: Colors.blue ),
      home: HomePage(),
  //     routes: <String, WidgetBuilder>
  // {
  // "/Bottom": (BuildContext context) => new BottomNavBar(),
  // }
      
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explore Flutter'),),
      drawer: Drawer(
        
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Flutter', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
              accountEmail: Text('flutter.dev',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('https://images.squarespace-cdn.com/content/v1/5cfce28b8dc2800001e965b7/1562825261700-YJMMR31H4OJH5XTQRKOA/ke17ZwdGBToddI8pDm48kL2QOIl1zNSPYP8zvSlW8gVZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpzu5X5PffHsrpf4FRYjM8Q9Xj6BpGU7dJG1fhv13AVG82aSTbXQqLJLELP1y0rxPis/1+flutter_blog-2-750x400-1.png'))
              ),
            ),
            ListTile(
              title: Text('App bars: bottom'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Page1(),
        ),
      );
      },
            ),
            ListTile(
              title: Text('App bars: top'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Page2(),
        ),
      );
      },
            ),
            ListTile(
              title: Text('Back Drop'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Page3(),
        ),
        
      );
      },
            ),
             ListTile(
              title: Text('Calender'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Page4(),
        ),
        
      );
      },
            )
          ],
        ),
      ),
      body: Center(child: Text('Components of Flutter', style: TextStyle(fontSize: 36),)),
          );
  }
}


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  void _bottomNav() {
    //   Navigator.popAndPushNamed(context, "/Bottom");
    // }
    return Scaffold(
       appBar: AppBar(
         title: const Text('Bottom Navigation'),
      ),
      body: Column(
              children: <Widget>[
       ListTile(
            title: Text('Bottom Icon Bar'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavBar(),
            ),


          );
          },
       ),
       ListTile(
        title: Text('Bottom Icon End Bar'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BottomIconEndBar(),
        ),


      );
      },
     ),
     ListTile(
        title: Text('Bottom Inset Bar'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BottomInsetFab(),
        ),


      );
      },
     ),
     ListTile(
        title: Text('Hide Bottom Bar'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HideBottomBar(Words()),
        ),


      );
      },
     ),
     ListTile(
        title: Text('Bottom Navigation Bar'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BottomIconBar(),
        ),


      );
      },
     ),
     ],
      ),
     
      );
  }
}


class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  void _bottomNav() {
    //   Navigator.popAndPushNamed(context, "/Bottom");
    // }
    Page2();
    return Scaffold(
       appBar: AppBar(
         title: const Text('Top Icon Bar'),
      ),
      body: Column(
              children: <Widget>[
       ListTile(
            title: Text('Basic App Bar'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TopIconBar(),
            ),


          );
          },
       ),
       ListTile(
        title: Text('Prominent App Bar'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProminentTopBar(),
        ),


      );
      },
     ),
     ListTile(
        title: Text('Image App Bar'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ImageAppBar(),
        ),


      );
      },
     ),
     ListTile(
        title: Text('Hide App Bar'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HideAppBar(),
        ),


      );
      },
     ),
     ListTile(
        title: Text('Contextual App Bar'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ContextualAppBar(),
        ),


      );
      },
     ),
     ],
      ),
     
      );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  void _bottomNav() {
    //   Navigator.popAndPushNamed(context, "/Bottom");
    // }
    
    return Scaffold(
       appBar: AppBar(
         title: const Text('BackDrop'),
      ),
      body: Column(
              children: <Widget>[
       ListTile(
            title: Text('Basic BackDrop'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BackDropPage(),
            ),


          );
          },
       ),
       ListTile(
        title: Text('BackDrop with ListView'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BackDropListPage(),
        ),


      );
      },
     ),
     ListTile(
        title: Text('Front Page with ListView'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BackDropListFrontPage(),
        ),


      );
      },
     ),
    
     ],
      ),
     
      );
  }
}


class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  void _bottomNav() {
    //   Navigator.popAndPushNamed(context, "/Bottom");
    // }
    
    return Scaffold(
       appBar: AppBar(
         title: const Text('Calender'),
      ),
      body: Column(
              children: <Widget>[
       ListTile(
            title: Text('Claender Slide'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CalenderSlide(),
            ),


          );
          },
       ),
       ListTile(
        title: Text('Calender Scale'),
        trailing: Icon(Icons.arrow_forward),
        onTap: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CalenderScale(),
        ),


      );
      },
     ),
    
     ],
      ),
     
      );
  }
}







