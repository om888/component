import 'package:flutter/material.dart';

class BackDropPage extends StatefulWidget {
  @override
  _BackDropPageState createState() => _BackDropPageState();
}

class _BackDropPageState extends State<BackDropPage> with SingleTickerProviderStateMixin{
  AnimationController controller; 

@override
void initState(){
  super.initState();
  controller = AnimationController(
    vsync: this, 
    duration: Duration(
      milliseconds: 100),
      value: 1.0);
}
@override
void dispose() {
    
    super.dispose();
    controller.dispose();
  }

bool get isPanelVisible{
  final AnimationStatus status = controller.status;
  return status == AnimationStatus.completed || status == AnimationStatus.forward;
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BackDrop Page'),
      elevation: 0.0,
      leading: IconButton(
        onPressed: (){
          controller.fling(velocity: isPanelVisible?-1.0:1.0);

        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.close_menu,
          progress: controller.view,
          )
      ,),
      ),
      body: TwoPanels(controller: controller,),
      
    );
  }
}

class TwoPanels extends StatefulWidget {

final AnimationController controller;
TwoPanels({this.controller});

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> {
static const header_height = 32.0;

Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints){
  final height = constraints.biggest.height;
  final backPanelHeight = height - header_height;
  final frontPanelHeight = - header_height;

return RelativeRectTween(
  begin: RelativeRect.fromLTRB(0.0, backPanelHeight, 0.0, frontPanelHeight),
  end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
  ).animate(CurvedAnimation(parent: widget.controller, curve: Curves.linear));


}


Widget bothPanels(BuildContext context, BoxConstraints constraints){
  

return Container(
  child: Stack(
    children: <Widget>[
      Container(
        color: Colors.blue,
        child: Center(
          child: Text('Back Panel', style: TextStyle(fontSize: 24)),
        ),
      ),
    PositionedTransition(
      rect: getPanelAnimation(constraints),
          child: Material(
        elevation: 12,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16),
        topRight: Radius.circular(16)),
        child: Column(
          children: <Widget>[
              
              Expanded(
                child: Center(
                  child: Text('Front Panel', style: TextStyle(fontSize: 24)),
                ),
              )
          ],
        ),
      ),
    )


    ],
  ),
);

}

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}