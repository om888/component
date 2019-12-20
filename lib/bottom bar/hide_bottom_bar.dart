import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



//import 'bottom_icon_end_fab.dart';
//import 'delete_snackbar.dart';
class Alphabate {
  String char;
  Alphabate({@required char}) {
    this.char = char;
  }
}


class Words {
  String char = "Alphabate";
}


class HideBottomBar extends StatefulWidget {
  Words _words = Words();

  HideBottomBar(this._words);
 // NavigationBar({Key key}) : super(key: key);

  @override
  _HideBottomBarState createState() => _HideBottomBarState();
}

class _HideBottomBarState extends State<HideBottomBar> {
  final List<Alphabate> letters = [
    Alphabate(char: "A"),
    Alphabate(char: "B"),
    Alphabate(char: "C"),
    Alphabate(char: "D"),
    Alphabate(char: "E"),
    Alphabate(char: "F"),
    Alphabate(char: "G"),
    Alphabate(char: "H"),
    Alphabate(char: "I"),
    Alphabate(char: "J"),
    Alphabate(char: "K"),
    Alphabate(char: "L"),
    Alphabate(char: "M"),
    Alphabate(char: "N"),
    Alphabate(char: "O"),
    Alphabate(char: "P"),
    Alphabate(char: "Q"),
    Alphabate(char: "R"),
    Alphabate(char: "S"),
    Alphabate(char: "T"),
    Alphabate(char: "U"),
    Alphabate(char: "V"),
    Alphabate(char: "W"),
    Alphabate(char: "X"),
    Alphabate(char: "Y"),
    Alphabate(char: "Z"),
  ];
  ScrollController _hideButtonController;

  bool _isVisible = true;
  @override
  void initState() {
    super.initState();
    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      print("listener");
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
          print("**** $_isVisible up");
        });
      }
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
          print("**** $_isVisible down");
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _isVisible
          ? FloatingActionButton(
            
              backgroundColor: Colors.black,
              elevation: 12,
              onPressed: null,
              child: Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: _isVisible ? 60 : 0.0,
        child: BottomAppBar(
          elevation: 8,
          shape: CircularNotchedRectangle(),
          color: Colors.deepPurpleAccent[700],
          child: Container(
            height: 60,
            child: Row(
              children: <Widget>[
          IconButton(icon: Icon(Icons.menu),color: Colors.white, onPressed: () {},),
          Text('                                                           '),
          IconButton(icon: Icon(Icons.search),color: Colors.white, onPressed: () {},),
          IconButton(icon: Icon(Icons.more_vert),color: Colors.white ,onPressed: () {},),],
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        controller: _hideButtonController,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 50,
            pinned: false,
            floating: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget._words.char),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(buildSliverListItem,
                childCount: letters.length),
          ),
        ],
      ),
    );
  }

  Widget buildSliverListItem(BuildContext context, int index) {
    return Center(
      child: ListTile(
        title: Text(letters[index].char),
      ),
    );
  }
}