import 'package:flutter/material.dart';

class Home extends StatefulWidget {
 const Home({Key? key}) : super(key: key);

  @override
 State<Home> createState() => _Home();
}
class _Home extends State<Home> {
  int _nospontos = 0;
  int _elespontos = 0;
  int _nosvitorias = 0;
  int _elesvitorias = 0;

 @override
  Widget build(BuildContext context) {
       return Stack(
              children: [
          Image.asset('images/cartas.jpg', fit: BoxFit.cover, height: double.infinity,
          width: double.infinity,),
       Row (
          mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget> [
            Padding(
              padding: EdgeInsets.all(200.0),
              child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text("Nós:  $_nospontos" , style: TextStyle(color: Colors.white,
                  
                ),),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: (){ 
                setState(() {
                         _nospontos++;
                         if(_nospontos == 12){
                            _nosvitorias ++;
                         }
                       });
              },  child: Text("+1",style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),)),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                         if(_nospontos > 0){
                            _nospontos --;
                         }
                       });
              }, child: Text("-1",style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  
                  
                ),))

            ]
          ),

          Row(
            children: <Widget>[
            Column(
              children: [ 
               ElevatedButton(onPressed: (){
                setState(() {
                         _nospontos += 3;
                       });
               }, child: Text("Truco",style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  
                ),))
              ],
            )

            ],
          ),
        
        Row(
          children: [
            Column(
              children: [
                Text("Vitórias: $_nosvitorias", style: TextStyle(color: Colors.red,
                  
                ),)
              ],
            )
          ],
        )
          ]
          ),
          ),
    Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text("Eles: $_elespontos" , style: TextStyle(color: Colors.white,
                  
                ),),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: (){ 
                setState(() {
                         _elespontos++;
                         if(_elespontos == 12){
                            _elesvitorias ++;
                         }
                       });

              },  child: Text("+1",style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  
                ),)),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                         if(_elespontos > 0){
                            _elespontos --;
                         }
                       });
              }, child: Text("-1",style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  
                ),))

            ]
          ),

          Row(
            children: <Widget>[
            Column(
              children: [ 
               ElevatedButton(onPressed: (){
              setState(() {
                         _elespontos += 3;
                       });
               }, child: Text("Truco",style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  
                ),))
              ],
            )

            ],
          ),
        
        Row(
          children: [
            Column(
              children: [
                Text("Vitórias: $_elesvitorias",style: TextStyle(color: Colors.red,
                  
                ),)
              ],
            )
          ],
        )
          ]
          ),
        ],),
       ],
        );
  }
}      


