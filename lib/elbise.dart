import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/datacontrol.dart';

class elbise extends StatefulWidget {
  elbise({Key? key}) : super(key: key);

  @override
  State<elbise> createState() => _elbiseState();
}

class _elbiseState extends State<elbise> {
  @override
  Widget build(BuildContext context) {
    List<String> elbise= DataControl.elbiseImage;
    return Scaffold(appBar: AppBar(title: const Text("Cimcim Butik  Elbise"),
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
        itemCount: DataControl.elbiseImage.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(children: [
        
           Expanded(child: Image.asset("images/"+DataControl.elbiseImage[index]+".png")),
              Text(DataControl.elbiseisim[index],style: const TextStyle(fontSize: 20),),
              Text(DataControl.fiyat_2[index],style: const TextStyle(color: Colors.black45,fontSize: 18))
            ]),
            color: Color.fromARGB(255, 148, 202, 186),) ;
        },
      ),
    )
    );}

    
  
}