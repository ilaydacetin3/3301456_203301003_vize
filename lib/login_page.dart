import 'package:flutter/material.dart';
import 'package:flutter_application_1/ana_sayfa.dart';
import 'package:flutter_application_1/sign.dart';

import 'Data/datacontrol.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username="";
  String password="";
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text("Cimcim Butik")),
      backgroundColor: Color.fromARGB(255, 176, 155, 212),),
      body: Form(
        key: formKey,

        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
          
            TextFormField(
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  labelText: "Kullanıcı Adı",
                  labelStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Kullanıcı Adınızı Giriniz";
                      
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value){
                    username = value;

                  },
                ),
                
                SizedBox(height: 10.0),
            
              TextFormField(
                 obscureText: true,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  labelText: "Şifre",
                  labelStyle: TextStyle(color: Colors.purple),
                  border:  OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Şifrenizi Girin";
                      
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value){
                    password=value;

                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                  

                      
                    if(formKey.currentState!.validate()){
                      if(DataControl.userList.length>0){
                       
                        for (var item in DataControl.userList) {
                         
                         

                          if(username==item.userName && password==item.password){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AnaSayfa(user:item ,)));

                          } else {ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "Önce kayıt olunuz")));
                                          break;
                                          }

                        }

                      }
                     }
                      
                 

                    }, child: const Text("Giriş")),
                  ),
                 ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign()));
                 }, child: const Text("Kayıt ol"))
                 ],
                ),
             ],
            ),
        ),
        ),
      
      );
    }
}