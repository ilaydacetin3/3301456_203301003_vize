class UserModel{
  String name;
  String surName;
  String gmail;
  String userName;
  String password;
  UserModel(this.name,this.surName,this.gmail,this.userName,this.password);


@override
  String toString() {
    // TODO: implement toString
    return "${this.name} ${this.gmail} ";
  }


}