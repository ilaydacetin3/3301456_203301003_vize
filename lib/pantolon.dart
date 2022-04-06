import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/datacontrol.dart';

class pantolon extends StatefulWidget {
  pantolon({Key? key}) : super(key: key);

  @override
  State<pantolon> createState() => _pantolonState();
}

class _pantolonState extends State<pantolon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Cimcim Butik  Pantolon"),
     backgroundColor:  Color.fromARGB(255, 176, 155, 212),),
    body: Container(
      child: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5
        ),
        itemCount: DataControl.pantolonlar.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(children: [
             
          Expanded(child: Image.asset("images/"+DataControl.pantolonresim[index]+".png")),
              Text(DataControl.pantolonlar[index],style: const TextStyle(fontSize: 20),),
              Text(DataControl.fiyat_3[index],style: const TextStyle(color: Colors.black45,fontSize: 18))
            ]),
            color: Color.fromARGB(255, 206, 155, 189),) ;
        },
      ),
    )
    );
  }
}