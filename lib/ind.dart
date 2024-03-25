import 'package:flutter/material.dart';


class Ind extends StatefulWidget {
  PageController controller;
  int itemcount;
  Ind(this.controller,this.itemcount,{super.key});

  @override
  _IndState createState() => _IndState();
}

class _IndState extends State<Ind> {

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_handleChanges);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(_handleChanges);
  }

@override
  Widget build(BuildContext context) {
    print('Refreshing the layout');
    return Container(
      height: 50, 
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.itemcount ,
          itemBuilder: (context,index){
            return _createInd(index);
          }),
    );
  }

  Widget _createInd(index){

    double w=10;
    double h=10;
    MaterialColor color=Colors.grey;

    if(widget.controller.page == index){
      w=15;
      h=15;
      color=Colors.blueGrey;
      }
    return SizedBox(
      height: 26,
      width: 26,
      child: Center(
        child: AnimatedContainer(
          margin: EdgeInsets.all(5),
          width: w,
          height: h,
          color: color,
          duration: Duration(milliseconds: 200),
        ),
      ),
    );

  }


  _handleChanges(){
    setState(() {

    });
  }
}
