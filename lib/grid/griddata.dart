
import 'package:flutter/material.dart';
import 'package:untitled11/actgrid.dart';
import 'package:untitled11/modeldata/modeldata.dart';
class griddata extends StatefulWidget {
griddata({required this.data,required this.index});

late modeldata data;
late int index;



  @override
  State<griddata> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<griddata> {
void btn_index(int index)
{
  print(index.toString());
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:SafeArea(
        child: GestureDetector(

            onTap: () => btn_index(widget.index),
            child:Container(
                height: 30,
                decoration: BoxDecoration(

                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                ),
                child:Row(
                  children: [
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 1,


                      child:Text(widget.data.Progress.toString(),style: TextStyle(color:Colors.white),),

                    ),
                    SizedBox(width: 10,),

                    Expanded(
                        flex: 9,
                        child:Text(widget.data.Name,style: TextStyle(color: Colors.white),)
                    )

                  ],
                )
            )

        ),
      )
    );
  }
}