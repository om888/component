import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../main.dart';

class CalenderScale extends StatefulWidget {
  @override
  _CalenderScaleState createState() => _CalenderScaleState();
}

class _CalenderScaleState extends State<CalenderScale> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
   CalendarController _controller;

  @override
  void initState() {
    
    super.initState();
    _controller = CalendarController();
  }

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
                  builder: (context) => Page4(),
        ),
      );
      },),
      title: const Text('Calender Scale'),
      
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.favorite),
          
          onPressed:(){

          },
        ),
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
    ),
  
    body: Column(
      children: <Widget>[
          Container(
                          decoration: BoxDecoration(
                           //border: BorderRadius.all()
                          ),
                          child: TableCalendar(
                            //rowHeight: 30,
                            formatAnimation: FormatAnimation.scale,
                            initialCalendarFormat: CalendarFormat.week,
                            calendarStyle: CalendarStyle(
                              todayColor: Colors.cyan,
                              selectedColor: Colors.orange,                              
                            ),
                            builders: CalendarBuilders(
                              todayDayBuilder: (context, date, event)=>
                              Container(
                                margin: EdgeInsets.all(4),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius: BorderRadius.circular(10)                                
                                ),
                                child: Text(date.day.toString(),style: TextStyle(color: Colors.white),),
                              ),
                            ),
                           //headerVisible: false,
                            headerStyle: HeaderStyle(formatButtonVisible: false,                            
                            ),
                            calendarController: _controller),
                            ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Text(
            'This is Calender Scale Page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    ),
  );
}
}


