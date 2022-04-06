import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/datacontrol.dart';

class bluz extends StatefulWidget {
  bluz({Key? key}) : super(key: key);

  @override
  State<bluz> createState() => _bluzState();
}

class _bluzState extends State<bluz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Cimcim Butik  Bluz"),
     backgroundColor:  Color.fromARGB(255, 176, 155, 212),),
    body: Container(
      child: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5
        ),
        itemCount: DataControl.bluzresim.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(children: [
             
          Expanded(child: Image.asset("images/"+DataControl.bluzresim[index]+".png")),
              Text(DataControl.bluz[index],style: const TextStyle(fontSize: 20),),
              Text(DataControl.fiyat_5[index],style: const TextStyle(color: Colors.black45,fontSize: 18))
            ]),
            color: Color.fromARGB(255, 204, 221, 109),) ;
        },
      ),
    )
    );
  }
}