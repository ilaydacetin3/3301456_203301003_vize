import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/datacontrol.dart';

class etek extends StatefulWidget {
  etek({Key? key}) : super(key: key);

  @override
  State<etek> createState() => _etekState();
}

class _etekState extends State<etek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Cimcim Butik Etek"),
     backgroundColor:  Color.fromARGB(255, 176, 155, 212),
     ),
    body: Container(
      child: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5
        ),
        itemCount:DataControl.etekler.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(children: [
             
          Expanded(child: Image.asset("images/"+DataControl.etekresim[index]+".png")),
              Text(DataControl.etekler[index],style: const TextStyle(fontSize: 20),),
              Text(DataControl.fiyat_4[index],style: const TextStyle(color: Colors.black45,fontSize: 18))
            ]),
            color: Color.fromARGB(255, 226, 178, 156),) ;
        },
      ),
    ),
    );
  }
}