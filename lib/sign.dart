import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/datacontrol.dart';
import 'package:flutter_application_1/Model/user_model.dart';

class Sign extends StatelessWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    String name="";
    String surName="";
    String gmail="";
    String password="";
    String userName="";
    

    return Scaffold(appBar: AppBar(title: const Text("Kayıt ol"),
    backgroundColor: Color.fromARGB(255, 176, 155, 212),
    ),
    body: SingleChildScrollView(
     
      child: Column(
        children: [Form(key: formKey,child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextFormField(
              validator: (value) {
                if(value!.length<3){
                  return "lüfen düzgün giriş yapiniz";
                }
              },
              onChanged: (value) {
                name=value;
              },
              decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                label: Text("isim")
                

            ),),
            TextFormField(
              validator: (value) {
                if(value!.length<3){
                  return "lüfen düzgün giriş yapiniz";
                }
              },
              onChanged: (value) {
                surName=value;
              },
              decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                label: Text("soyisim")
                

            ),),
            TextFormField(
              validator: (value) {
                if(value!.length<3){
                  return "lüfen düzgün giriş yapiniz";
                }
              },
              onChanged: (value) {
                userName=value;
              },
              decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                label: Text("kullanıcı adı")
                

            ),),
            TextFormField(
              validator: (value) {
                if(value!.length<3){
                  return "lüfen düzgün giriş yapiniz";
                }
              },
              onChanged: (value) {
                gmail=value;
              },
              decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                label: Text("gmail")
                

            ),),
            TextFormField(
              obscureText: true,
              validator: (value) {
                if(value!.length<3){
                  return "lüfen düzgün giriş yapiniz";
                }
              },
              onChanged: (value) {
                password=value;
              },
              decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                label: Text("şifreniz")
                

            ),),
          ElevatedButton(onPressed: () {
            if(formKey.currentState!.validate()){
              UserModel newUser = UserModel(name, surName, gmail, userName, password);
              DataControl.addUser(newUser);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "Kayıt başarılı")));
              print(DataControl.userList);

            }
            
          }, child: const Text("Kayıt ol"))
            
            ],),
        ))],
        
      ),
    ),
    
    
    
    );
  }
}