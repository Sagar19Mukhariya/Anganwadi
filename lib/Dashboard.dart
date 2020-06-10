import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
 
 Material myItems(IconData icon,String heading,int color){
   return Material(
     color:Colors.white,
     elevation: 15.0,
     shadowColor: Color(0x802196F3),
     borderRadius: BorderRadius.circular(24.0),
     child: Center(
       child:Padding(
         padding: const EdgeInsets.all(5.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[    
                   Center(
                   child: Padding(
                     padding: const EdgeInsets.all(5.0),
                     child:Text(heading,
                     style:TextStyle(
                     color: new Color(color),
                     fontSize: 10.0,

                     ),
                     ),
                     ),
                    )
                ]
             )
           ],
         ),

       )
     ),

   );
 }
 
 
 
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Dashboard',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
    ),
    
    body:StaggeredGridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 15.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),

      children: <Widget>[
        myItems(Icons.feedback,"Gallary",0xdb7093),
        myItems(Icons.rss_feed,"Documents",0xdb7093),
        myItems(Icons.new_releases,"New Order",0xdb7093),
        myItems(Icons.settings,"Evaluate",0xdb7093),
        myItems(Icons.feedback,"Feedback",0xdb7093),
      ],

      staggeredTiles: [
        StaggeredTile.extent(1, 100.0),
        StaggeredTile.extent(1, 100.0),
        StaggeredTile.extent(1, 100.0),
        StaggeredTile.extent(1, 100.0),
        StaggeredTile.extent(2, 120.0),
      ],
      ),
    );
  }
}
