import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/user_model.dart';

class Profil extends StatelessWidget {
  UserModel user;
   Profil({required this.user,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 172, 211, 195),appBar: AppBar(title: Text("Profil Bilgileri"),
    backgroundColor: Color.fromARGB(255, 176, 155, 212),),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/User_with_smile.svg/1200px-User_with_smile.svg.png"),
       
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(decoration:myBoxDecoration() ,child: Text("İsminiz : "+user.name ,style: TextStyle(fontSize: 32,color: Color.fromARGB(255, 160, 28, 68)),)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(decoration:myBoxDecoration() ,child: Text("Soyisminiz: "+user.surName,style: TextStyle(fontSize: 32,color: Color.fromARGB(255, 160, 28, 68)),)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(decoration:myBoxDecoration() ,child: Text("Mail Adresiniz:\n"+user.gmail,textAlign: TextAlign.center,style: TextStyle(fontSize: 32,color: Color.fromARGB(255, 160, 28, 68)),)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(decoration:myBoxDecoration() ,child: Text("Kullanıcı İsminiz:"+user.userName,style: TextStyle(fontSize: 32,color: Color.fromARGB(255, 160, 28, 68)),)),
            ],
          ),
        )


      ]),
    ),
    );
  }


BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    
    border: Border.all(width: 5, color: Color.fromARGB(255, 53, 112, 97)
  ),
    borderRadius: BorderRadius.all(
        Radius.circular(10.0) 
    ),
  );
}

} 