import 'package:flutter/material.dart';
import 'package:untitled11/modeldata/modeldata.dart';
import'package:untitled11/grid/griddata.dart';
class actgrid extends StatefulWidget {
  const actgrid({super.key, required this.title});


  final String title;

  @override
  State<actgrid> createState() => _actgridState();
}

class _actgridState extends State<actgrid> {
List<modeldata> grid=[];
@override
void initState() {
  modeldata tmp=new modeldata("درس1",10);
  modeldata tmp1=new modeldata("در2",10);
  modeldata tmp2=new modeldata("در3",10);
  modeldata tmp3=new modeldata("درس4",10);
  modeldata tmp4=new modeldata("5",10);

grid.add(tmp);
  grid.add(tmp1);
  grid.add(tmp2);
  grid.add(tmp3);
  grid.add(tmp4);


  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: GridView.count(
            scrollDirection:Axis.vertical,
            crossAxisCount: 1,
            mainAxisSpacing: 5,
            childAspectRatio: 25,
            children: List.generate(grid.length, (index) {
              return griddata(
                data: grid[index],
                index: index,
              );            }
            ),
          ),
      ),
    );
  }
}