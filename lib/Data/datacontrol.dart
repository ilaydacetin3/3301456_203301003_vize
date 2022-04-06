import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/user_model.dart';

class DataControl{
 static List<UserModel> userList=[];

  static addUser(UserModel newModel){
    userList.add(newModel);
  }

 static List<String> elbiseImage=["buzguluelbise","cicekelbise","kirimizielbise","minisiyahelbise","payetlielbise","pembesatenelbise","prenseselbise",
 "yesilelbise",];
 static List<String> elbiseisim=["Büzgülü Elbise","Çiçekli Elbise","Kırmızı Elbise","Mini Siyah Elbise","Payetli Elbise","Pembe Saten Elbise","Prenses Elbise",
 "Yesil Midi ELbise"];
 
  static List<String> kiyafetler=["Çiçek Baskılı Örme Elbise ", "Deri Kruvaze Bağlamalı Etek","Geniş Paça Yüksekbel Pantolon"," Siyah Beyaz Çizgili Oversize Kazak", 
 "Yırtmaçlı Mini Etek","Bej Zebra Desenli Bluz "];
  static List<String> resimler=["cicekelbise","deribaglamalietek","genispacapantolon","siyahbeyazcizgili","yirtmacliminietek","zebrabluz"];
  

   static List<String> fiyatlar=["100 TL  "," 200 TL", "193 TL",
  "97 TL","113 TL","172 TL"];

   static List<String> fiyat_2=["165 TL","110 TL","850 TL","230 TL","420 TL","780 TL","350 TL","180 TL"];
   static List<String> pantolonlar=["Beyaz Dikişli Pantolon","Beyaz Pantolon","Bol Paça Kot Pantolon","Çiçekli Geniş Paça Pantolon","Deri Pantolon"
   ,"Kısa Tayt","Siyah Yırtık Pantolon","Yeşil Paloazzo Pantolon"];
    static List<String> fiyat_3=["200 TL","110 TL","130 TL","323 TL","222 TL","129 TL","350 TL","180 TL"];
    static List<String> pantolonresim=["beyazdikisli","beyazpantolon","bolpacakot","ciceklibol",
    "deri","kısatayt","siyahyirtik","yesilpalazzo"];

    static List<String> etekler=["Beyaz Tenis Etek","Kahverengi Şort Etek","Kare Desen Midi Etek","Kırmızı Çiçekli Etek","Renkli Etek"
   ,"Siyah Fırfırlı Etek","Yırtmaçlı Mini Etek","Yırtmaçlı Büzgülü Midi Etek"];
    static List<String> fiyat_4=["300 TL","234 TL","130 TL","300 TL","278 TL","210 TL","150 TL","180 TL"];
    static List<String> etekresim=["beyaztenis","kahvesortekek","karemidiboy","kirmizicicek",
    "renklietek","siyahfirfir","yirtmaclı","yirtmaclikahve"];

     static List<String> bluz=["Beyaz Balon Kol Bluz","Çiçek Desenli Bluz","Kırmızı Dekolteli Bluz","Korse Görünümlü Bluz","Mor Tül Kol Bluz","Renkli Bluz"
    ,"Siyah Dekolteli Bluz","Turuncu Düğmeli Bluz"];
    static List<String> fiyat_5=["150 TL","110 TL","130 TL","188 TL","100 TL","129 TL","155 TL","180 TL"];
    static List<String> bluzresim=["beyazbluz","cicekbluz","kirmizilibluz","korsebluz",
    "morbluz","renklibluz","siyahdekolte","truncuelbise"];

}


 
